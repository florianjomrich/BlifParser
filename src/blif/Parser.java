package blif;

import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;

import placement.RapidsmithParser;
import commands.Command;
import commands.GenericLatch;
import commands.LogicGate;

public class Parser {

	public static void main(String[] args) {
		try {
//			 String filename = "blif\\testBlif2.blif";
//			 String filename = "blif\\testBlif3.blif";
//			 String filename = "blif\\alu4_map_sp6.blif";
//			 String filename = "blif\\apex2.blif";
//			String filename = "blif\\s38417.blif";
			String filename = "blif\\bigkey.blif";
			Model model = parseFile(filename);
			System.out.println("File: " + filename);

			RapidsmithParser myRapidParser = new RapidsmithParser();
			myRapidParser.startProcessing(model);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return;
	}

	public static Model parseFile(String fileName) throws Exception {
		Command lastCommand = new Command();
		Model model = new Model();
		byte[] encoded = Files.readAllBytes(Paths.get(fileName));
		String fileContent = new String(encoded, Charset.defaultCharset());
		String[] lines = fileContent.split("\\r?\\n");

		boolean stillMoreInputs = false;// to check if there are still inputs to
										// add - which are separated through \
		boolean stillMoreOutputs = false;// to check if there are still outputs to
										// add - which are separated through \
		
		for (String line : lines) {
			CopyOnWriteArrayList<String> component = new CopyOnWriteArrayList<String>(
					Arrays.asList(line.split(" ")));
			for (String tempElement : component) {
				if (tempElement.equals("")) {
					component.remove(tempElement);
				}
			}
			// check if it was an empty line which has not to be processed
			if (component.isEmpty())
				continue;
			// the next line is still an input line
			if (stillMoreInputs) {
				component.add(0, ".inputs");
			}
			// the next line is still an output line
			if (stillMoreOutputs) {
				component.add(0, ".outputs");
			}


			switch (component.get(0)) {
			//
			// BLIF header
			//
			case ".model":
				model.modelName = component.get(1);
				break;
			case ".inputs"://CONTINUE WORK HERE !!!
				if (stillMoreInputs) {
					for (String input : model.inputs) {
						component.add(component.size()-1,input);//add it at the end
					}
				}
				model.inputs = new ArrayList<String>(component);
				model.inputs.remove(0);//remove .inputs
				
				if (model.inputs.get(model.inputs.size() - 1).equals("\\")) {
					model.inputs.remove(model.inputs.size() - 1);
					stillMoreInputs = true;
				} else {
					stillMoreInputs = false;
				}
				System.out.println("My Inputs: "+model.inputs.toString());
				break;
			case ".outputs":
				if (stillMoreOutputs) {
					for (String input : model.outputs) {
						component.add(component.size()-1,input);//add it at the end
					}
				}
				model.outputs = new ArrayList<String>(component);
				model.outputs.remove(0);//remove .inputs
				
				if (model.outputs.get(model.outputs.size() - 1).equals("\\")) {
					model.outputs.remove(model.outputs.size() - 1);
					stillMoreOutputs = true;
				} else {
					stillMoreOutputs = false;
				}
				System.out.println("My Outputs: "+model.outputs.toString());
				break;
			case ".clock":
				break;
			case ".end":
				break;

			//
			// logic gate
			//
			case ".names":
				LogicGate gate = new LogicGate();
				gate.inputs = new ArrayList<String>(component);
				gate.output = gate.inputs.get(gate.inputs.size() - 1);
				gate.inputs.remove(gate.inputs.size() - 1);// entfernt den
															// output aus den
															// inputs
				gate.inputs.remove(0);// entfernt .names aus den inputs gehört
										// hier ja nicht mehr rein

				model.logicGates.add(gate);
				lastCommand = gate;
				break;

			//
			// latch
			//
			case ".latch":
				// z.B. .latch input_d ouput_q re clock 0 // = input output type
				// clock initalValue
				GenericLatch latch = new GenericLatch();
				latch.input = component.get(1);
				latch.output = component.get(2);

				// nun die optionalen Parameter
				switch (component.size()) {
				case 6:// type, clock und initialValue sind vorhanden
					latch.type = component.get(3);
					latch.control = component.get(4);
					latch.initVal = Integer.valueOf(component.get(5));

					break;
				case 5:// nur type und clock sind als optionale Parameter
						// vorhanden
					latch.type = component.get(3);
					latch.control = component.get(4);

					latch.initVal = 3; // wird auf Unkown gesetzt per Default
					break;
				case 4:// nur clock ist als optionaler Parameter vorhanden
					latch.initVal = Integer.valueOf(component.get(3));

					latch.type = "UNKOWN";
					latch.control = "UNKOWN";

					break;
				default:
					// Keine Änderung - weil Pflichtparameter bereits eingefügt
					// wurden
					break;
				}
				model.genericLatches.add(latch);// erzeugtes Latch hinzufügen
				lastCommand = latch;
				break;

			//
			// truthtable
			//
			default:
				if (component.get(0).startsWith("0")
						|| component.get(0).startsWith("1")
						|| component.get(0).startsWith("-")) {
					if (lastCommand instanceof LogicGate) {
						LogicGate lastGate = (LogicGate) lastCommand;
						lastGate.outputcover = addLineToTruthtable(
								lastGate.outputcover, component.get(0),
								component.get(1));
					} else {
						throw new Exception(
								"Error: Suspected Truthtable for logicgate");
					}
				}
				break;
			}
		}
		return model;
	}

	private static Truthtable addLineToTruthtable(Truthtable table,
			String inputs, String output) throws Exception {
		Truthtable newTable;
		if (table == null)
			newTable = new Truthtable();
		else
			newTable = new Truthtable(table);
		ArrayList<Integer> inputList = readStringToArrayList(inputs);
		ArrayList<Integer> outputList = readStringToArrayList(output);
		newTable.inputTable.add(inputList);
		newTable.outputTable.put(inputList, outputList);
		return newTable;
	}

	private static ArrayList<Integer> readStringToArrayList(String text)
			throws Exception {
		ArrayList<Integer> ret = new ArrayList<Integer>();

		for (int i = 0; i < text.length(); i++) {
			String letter = text.substring(i, i + 1);
			if (letter.equals("0")) {
				ret.add(0);
			} else if (letter.equals("1")) {
				ret.add(1);
			} else if (letter.equals("-")) {
				ret.add(3);
			} else {
				throw new Exception("Error: Unknown value in Truthtable '"
						+ letter + "'");
			}
		}

		return ret;
	}
}
