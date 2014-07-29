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
import commands.ModelReference;

public class Parser {

	public static void main(String[] args) {
		try {
//			String filename = "blif\\adder.blif";
//			String filename = "blif\\testBlif2.blif";
//			String filename = "blif\\testBlif3.blif";
//			String filename = "blif\\testBlif4.blif";
//			String filename = "blif\\blifSim.blif";
			String filename = "blif\\alu4_map_sp6.blif";
//			String filename = "blif\\apex2.blif";
//			String filename = "blif\\s38417.blif";
//			String filename = "blif\\bigkey.blif";
			Model model = parseFile(filename);
			
			RapidsmithParser myRapidParser = new RapidsmithParser();
			myRapidParser.startProcessing(model);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return;
	}

	public static Model parseModel(String modelDescription) throws Exception {
		Command lastCommand = new Command();
		Model model = new Model();
		String[] lines = modelDescription.split("\\r?\\n");

		boolean stillMoreInputs = false;// to check if there are still inputs to
										// add - which are separated through \
		boolean stillMoreOutputs = false;// to check if there are still outputs to
										// add - which are separated through \
		
		for (String line : lines) {
			CopyOnWriteArrayList<String> component = new CopyOnWriteArrayList<String>(
					Arrays.asList(line.split(" |\t")));		//split at spacebars or tabs
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
			// Modelreference
			//
			case ".subckt":
				ModelReference ref = new ModelReference();
				ref.name = component.get(1);
				for(int i = 2; i < component.size(); i++) {
					String mapping[] = component.get(i).split("=");
					if(mapping.length != 2)
						throw new Exception("Error: Expected X=Y in '.subckt'. Too many spacebars?");
					if(mapping[0].equals("") || mapping[1].equals(""))
						throw new Exception("Error: Expected X=Y in '.subckt'. Too many spacebars?");
					ref.formalActualList.put(mapping[0], mapping[1]);
				}
				model.modelReferences.add(ref);
				break;
				
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
				model.clocks = new ArrayList<String>(component);
				model.clocks.remove(0);//remove .clock
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
				gate.inputs.remove(0);// entfernt .names aus den inputs geh�rt
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
					// Keine �nderung - weil Pflichtparameter bereits eingef�gt
					// wurden
					break;
				}
				model.genericLatches.add(latch);// erzeugtes Latch hinzuf�gen
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
	
	public static Model parseFile(String fileName) throws Exception {
		Model model = null;
		CopyOnWriteArrayList<Model> modelList = new CopyOnWriteArrayList<Model>();
		byte[] encoded = Files.readAllBytes(Paths.get(fileName));
		String fileContent = new String(encoded, Charset.defaultCharset());
		String[] modelDescriptions = fileContent.split("\\.model");
		for(int i = 1; i < modelDescriptions.length; i++) {
			if(!modelDescriptions[i].equals("")) {
				modelDescriptions[i] = ".model".concat(modelDescriptions[i]);
				Model newModel = parseModel(modelDescriptions[i]);
				modelList.add(newModel);
			}
		}
		if(modelDescriptions.length > 2) {
			outerloop: for(int i = 0; i < modelList.size(); i++) {							//iterate over all models.
				for(int j = 0; j < modelList.size(); j++) {									//check for every other model...
					if(i != j) {
						for(int k = 0; k < modelList.get(j).modelReferences.size(); k++) {	//...if it contains the current model as .subckt-reference
							if(modelList.get(j).modelReferences.get(k).name.equals(modelList.get(i).modelName)) {
								continue outerloop;
							}
						}
					}
				}
				
				model = modelList.get(i);
				break;
			}
			
			if(model == null) {
				throw new Exception("Error: All models are referenced in .subckt-references.");
			}
			
			modelList.remove(model);
			for(int i = 0; i < model.modelReferences.size(); i++) {
				addModelToModel(modelList, model, model.modelReferences.get(i));
			}
		}
		else {
			model = modelList.get(0);
		}
		return model;
	}
	
	private static void addModelToModel(CopyOnWriteArrayList<Model> allModels, Model rootModel, ModelReference addModel) throws Exception {
		Model modelTemplate = null;
		for(int i = 0; i < allModels.size(); i++) {
			if(allModels.get(i).modelName.equals(addModel.name)) {
				modelTemplate = allModels.get(i);
				break;
			}
		}
		if(modelTemplate == null)
			throw new Exception("Error: Can't find Model '" + addModel + "'");
		
		Model modelInstance = new Model(modelTemplate);
		for(String oldName : addModel.formalActualList.keySet()) {
			String newName = addModel.formalActualList.get(oldName);
			replaceEqualString(modelInstance.inputs, oldName, newName);
			replaceEqualString(modelInstance.outputs, oldName, newName);
			replaceEqualString(modelInstance.clocks, oldName, newName);
			for(LogicGate gate : modelInstance.logicGates) {
				replaceEqualString(gate.inputs, oldName, newName);
				gate.output = gate.output.equals(oldName) ? newName : gate.output;
			}
			for(GenericLatch latch : modelInstance.genericLatches) {
				latch.output = latch.output.equals(oldName) ? newName : latch.output;
				latch.input = latch.output.equals(oldName) ? newName : latch.input;
				latch.control = latch.output.equals(oldName) ? newName : latch.control;
			}
			for(ModelReference ref : modelInstance.modelReferences) {
				for(String key : ref.formalActualList.keySet()) {
					if(ref.formalActualList.get(key).equals(oldName)) {
						ref.formalActualList.put(key, newName);
					}
				}
			}
		}

		for(ModelReference ref : modelInstance.modelReferences) {
			addModelToModel(allModels, modelInstance, ref);
		}
		rootModel.realModelReferences.add(modelInstance);
	}
	

	private static void replaceEqualString(ArrayList<String> list, String search, String replace) {
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).equals(search)) {
				list.set(i, replace);
			}
		}
	}

	private static Truthtable addLineToTruthtable(Truthtable table, String inputs, String output) throws Exception {
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

	private static ArrayList<Integer> readStringToArrayList(String text) throws Exception {
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
