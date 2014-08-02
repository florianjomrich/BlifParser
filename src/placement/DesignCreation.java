package placement;

import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;

import javax.crypto.spec.PSource;

import commands.GenericLatch;
import commands.LogicGate;
import blif.Model;
import models.IOB_BLOCK_INSTANCE;
import models.IOB_BLOCK_INSTANCE.TypeOfInstance;
import models.NegativeSLICE;
import models.PositiveSLICE;
import models.SLICEL_INSTANCE;
import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.device.PrimitiveSite;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class DesignCreation {

	// ArrayList<String> availableFinalOutputVariables = new
	// ArrayList<String>();

	// stores the nets already placed
	HashMap<String, Net> alreadyPlacedNets = new HashMap<String, Net>();

	// stores the latches and logic gates already placed
	HashMap<String, String> portNubmerOfTheAlreadyPlacedInstances = new HashMap<String, String>();
	HashMap<String, String> typeOfTheAlreadyPlaceInstances = new HashMap<String, String>();
	HashMap<String, Instance> alreadyPlacedInstances = new HashMap<String, Instance>();
	


	// for mapping the gates and latches
	String[] alphabetSelector = { "A", "B", "C", "D" };

	// My own Helper-classes for faster processing of routine steps
	NetCreator myNetCreator = new NetCreator();
	Placer myPlacer = null;

	// the global clk
	IOB_BLOCK_INSTANCE clk;
	IOB_BLOCK_INSTANCE global_reset;
	Instance clk_buffer;

	String _SLICEL = "_SLICEL";
	String _LATCH = "_LATCH";
	String _FINAL_OUTPUT = "_FINAL_OUTPUT";
	String _LOGICBLOCK = "_LOGICBLOCK";
	String _IOB_INPUT = "_IOB_INPUT";
	String _IOB_OUTPUT = "_IOB_OUTPUT";

	// count how much space is left in one slice
	// depending on the clock used
	int posBlockCounter = 0;
	int negBlockCounter = 0;

	// to iterate over the different Slice-Types (pos. clk and neg. clk
	// triggered)
	SLICEL_INSTANCE positiveSlice = null;
	SLICEL_INSTANCE negativeSlice = null;

	// to use an own Placer and deactivate the Random-Placer
	boolean useOwnPlacer = false;

	/**
	 * 
	 * @param model
	 *            - The model created by the File-Parser which now has to be
	 *            mapped onto the FPGA
	 * @throws Exception
	 */
	public Design createDesign(Model model, String name) throws Exception {
		// Create a new Design from scratch rather than load an existing design
		Design design = new Design();
		// Set its name
		design.setName(name);

		// When we set the part name, it loads the corresponding Device and
		// WireEnumerator
		// Always include package and speed grade with the part name
		// load the Spartan 6 Device

		design.setPartName("xc6slx45csg324-3");

		HashMap<String, PrimitiveSite> primitiveSites = design.getDevice()
				.getPrimitiveSites();

		// initialize the placer
		myPlacer = new Placer(design, primitiveSites, useOwnPlacer);

		// First check for correctness of the given model! Otherwise the later
		// routines won't terminate
		// Does not help if Loops are done in the specification
		// e.g. LogicFunction A has output for B and B has output for A and both
		// need each other as inputs
		this.checkModelForCorrectness(model);

		// place the input and output IOBs
		this.createInputAndOutputIOBs(model, design);

		// setup the global clock first as well
		// and setup a reset pin to reset all the latches/flipFlops
		// but only do so if there is at least one latch available and therefore
		// a clock is needed
		if (model.genericLatches.size() > 0) {
			setupGlobalClock(model, design, myNetCreator);
			setupGlobalReset(model, design, myNetCreator);
		}

		// Dump-Place the LogicGates based on SLICELs
		// has to be done first BEFORE the latches
		// since if one latch exits it is already placed
		this.dumpPlaceLogicGates(model, myNetCreator, design);

		// Dump-Place the remaining Latches based on SLICELs (no connection
		// established in
		// the beginning)
		this.dumpPlaceRemainingLatches(model, myNetCreator, design);

		// Now place if necessary the last latch and logic block
		if (posBlockCounter != 0) {
			myPlacer.placeInstance(positiveSlice);
			design.addInstance(positiveSlice);
		}
		if (negBlockCounter != 0) {
			myPlacer.placeInstance(negativeSlice);
			design.addInstance(negativeSlice);
		}

		// Now connect all the Latches
		this.connectLatches(model, myNetCreator, design);

		// and the Logic-Blocks
		this.connectLogicBlocks(model, myNetCreator, design);

		return design;
	}

	private void dumpPlaceRemainingLatches(Model model, NetCreator myNetCreator,
			Design design) {

				for (GenericLatch currentLatch : model.genericLatches) {
					if(currentLatch.type.equals("ah") || currentLatch.type.equals("fe")){
						this.placeActiveHighFallingEdgeLatch(currentLatch,design,myNetCreator,model);
					}
					else if(currentLatch.type.equals("al") || currentLatch.type.equals("re")){
						this.placeActiveLowRisingEdgeLatch(currentLatch,design,myNetCreator,model);
					}
					else{
						System.out.println("LATCH TYPE: "+currentLatch.type);
						System.err.print("Unknown Latch Type found!");
						Error e = new Error();
						throw e;
						
					}
				}
			
		
	}

	private void setupGlobalReset(Model model, Design design,
			NetCreator myNetCreator) {

		global_reset = new IOB_BLOCK_INSTANCE(TypeOfInstance.IOB_INPUT,
				"global_reset");
		myPlacer.placeInstance(global_reset);
		design.addInstance(global_reset);

	}

	private void connectLogicBlocks(Model model, NetCreator myNetCreator,
			Design design) {
		
		for (LogicGate currentLogicGate : model.logicGates) {

			String currentLOGIC_BLOCK_OUTPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
					.get(currentLogicGate.output);

			SLICEL_INSTANCE currentLogicGateInstance = (SLICEL_INSTANCE) alreadyPlacedInstances
					.get(currentLogicGate.output + "_"
							+ currentLOGIC_BLOCK_OUTPUT_PORT+_LOGICBLOCK);

			int currentNumberOfInput = 1;
			for (String currentToBeMappedInput : currentLogicGate.inputs) {

				
				String currentTypeOfOtherInstance = typeOfTheAlreadyPlaceInstances.get(currentToBeMappedInput);
				
				System.out.println(currentToBeMappedInput+" OUtput");
				
				if (currentTypeOfOtherInstance.equals(_LATCH)) {
					System.out.println("Hallo");
					String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
							.get(currentToBeMappedInput);
					
					

					SLICEL_INSTANCE otherInstance = (SLICEL_INSTANCE) alreadyPlacedInstances
							.get(currentToBeMappedInput + "_"
									+ current_INPUT_PORT+_LATCH);

					// now connect the current with the other Latch
					myNetCreator
							.generateNet(current_INPUT_PORT + "Q",
									otherInstance,
									currentLOGIC_BLOCK_OUTPUT_PORT
											+ currentNumberOfInput,
									currentLogicGateInstance, design,
									alreadyPlacedNets);
				} else if (currentTypeOfOtherInstance.equals(_LOGICBLOCK)) {
					
					
					String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
							.get(currentToBeMappedInput);
					
					

					SLICEL_INSTANCE otherInstance = (SLICEL_INSTANCE) alreadyPlacedInstances
							.get(currentToBeMappedInput + "_"
									+ current_INPUT_PORT+_LOGICBLOCK);
					
					myNetCreator
							.generateNet(current_INPUT_PORT + "MUX",
									otherInstance,
									currentLOGIC_BLOCK_OUTPUT_PORT
											+ currentNumberOfInput,
									currentLogicGateInstance, design,
									alreadyPlacedNets);
				//it has to be a IOB	
				} else {
				
					IOB_BLOCK_INSTANCE otherInstance = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances
							.get(currentToBeMappedInput);
					
					myNetCreator
							.generateNet("I", otherInstance,
									currentLOGIC_BLOCK_OUTPUT_PORT
											+ currentNumberOfInput,
									currentLogicGateInstance, design,
									alreadyPlacedNets);
				}
				currentNumberOfInput++;
			}

			// check if output is final output
			if (alreadyPlacedInstances.containsKey(currentLogicGate.output
					+ _FINAL_OUTPUT)) {
				IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances
						.get(currentLogicGate.output + _FINAL_OUTPUT);
				myNetCreator.generateNet(
						currentLOGIC_BLOCK_OUTPUT_PORT + "MUX",
						currentLogicGateInstance, "O", otherIOB_BLOCK_INSTANCE,
						design, alreadyPlacedNets);
			}
		}
	}

	private void connectLatches(Model model, NetCreator myNetCreator,
			Design design) {
		for (GenericLatch currentLatch : model.genericLatches) {
			
			String currentLATCH_OUTPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
					.get(currentLatch.output);
			
			SLICEL_INSTANCE currentLatchInstance = (SLICEL_INSTANCE) alreadyPlacedInstances
					.get(currentLatch.output + "_" + currentLATCH_OUTPUT_PORT+_LATCH);

			String current_INPUT_Type = typeOfTheAlreadyPlaceInstances.get(currentLatch.input);
			

			if (current_INPUT_Type.equals(_LATCH)) {
				String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
						.get(currentLatch.input);
				
				SLICEL_INSTANCE otherLatchInstance = (SLICEL_INSTANCE) alreadyPlacedInstances
						.get(currentLatch.input + "_" + current_INPUT_PORT+_LATCH);

				// now connect the current with the other Latch
				myNetCreator.generateNet(current_INPUT_PORT + "Q",
						otherLatchInstance, currentLATCH_OUTPUT_PORT + "X",
						currentLatchInstance, design, alreadyPlacedNets);
				
				
			} else if (current_INPUT_Type.equals(_LOGICBLOCK)) {
				String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances
						.get(currentLatch.input);
								
				SLICEL_INSTANCE otherLogic_BLOCK_INSTANCE = (SLICEL_INSTANCE) alreadyPlacedInstances
						.get(currentLatch.input + "_" + current_INPUT_PORT+_LOGICBLOCK);
				myNetCreator.generateNet(current_INPUT_PORT + "MUX",
						otherLogic_BLOCK_INSTANCE, currentLATCH_OUTPUT_PORT
								+ "X", currentLatchInstance, design,
						alreadyPlacedNets);
			} else {
				IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances
						.get(currentLatch.input);
				myNetCreator.generateNet("I", otherIOB_BLOCK_INSTANCE,
						currentLATCH_OUTPUT_PORT + "X", currentLatchInstance,
						design, alreadyPlacedNets);
			}

			// check if output is final output
			if (alreadyPlacedInstances.containsKey(currentLatch.output
					+ _FINAL_OUTPUT)) {
				IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances
						.get(currentLatch.output + _FINAL_OUTPUT);
				myNetCreator.generateNet(currentLATCH_OUTPUT_PORT + "Q",
						currentLatchInstance, "O", otherIOB_BLOCK_INSTANCE,
						design, alreadyPlacedNets);
			}

		}

	}

		private void dumpPlaceLogicGates(Model model, NetCreator myNetCreator,
			Design design) {
		// Setup the new logic block

		for (LogicGate currentLogicGate : model.logicGates) {

			if (posBlockCounter == 0)
				positiveSlice = new PositiveSLICE("");// naming is done in the
														// .setupTheLogicBlock

			if (negBlockCounter == 0)
				negativeSlice = new NegativeSLICE("");

			// check if the currentLogicGate has got at least one additional
			// Latch
			GenericLatch primaryLatch = null;
			for (GenericLatch currentLatchToCheck : model.genericLatches) {
				if (currentLogicGate.output.equals(currentLatchToCheck.input)) {
					primaryLatch = currentLatchToCheck;
					System.out.println("FOUND");
					break;
				}
			}

			// no Latch connected to this LogicBlock
			if (primaryLatch == null) {
				// choose the SLICE Type which has got the most space left
				if (posBlockCounter < negBlockCounter) {
					positiveSlice = (PositiveSLICE) this.setupTheLogicBlock(
							currentLogicGate, myNetCreator, design,
							alphabetSelector[posBlockCounter], positiveSlice);
					
					
					this.addTheLogicBlockToAlreadyPlaceInstances(currentLogicGate, posBlockCounter, positiveSlice);
					posBlockCounter=(posBlockCounter+ 1) % 4;
					
				} else {
					negativeSlice = (NegativeSLICE) this.setupTheLogicBlock(
							currentLogicGate, myNetCreator, design,
							alphabetSelector[negBlockCounter], negativeSlice);
				
					this.addTheLogicBlockToAlreadyPlaceInstances(currentLogicGate, negBlockCounter, negativeSlice);
					negBlockCounter=(negBlockCounter+ 1) % 4;
					
				}
			//primary Latch available	
			} else if (primaryLatch.type.equals("ah")
					|| primaryLatch.type.equals("fe")) {
				
				positiveSlice = (PositiveSLICE) this.setupTheLogicBlock(
						currentLogicGate, myNetCreator, design,
						alphabetSelector[posBlockCounter], positiveSlice);
				
				//setup the PrimaryLatch as well
				positiveSlice = (PositiveSLICE)  this.setupThePrimaryLatch(primaryLatch, alphabetSelector[posBlockCounter], currentLogicGate, positiveSlice);
				
				//remove the primary latch since does not have to be added once more
				model.genericLatches.remove(primaryLatch);
			
				
				//add the latch and the logicBlock to the placed Instances
				this.addTheLatchToAlreadyPlacedInstances(primaryLatch, posBlockCounter, positiveSlice);
				this.addTheLogicBlockToAlreadyPlaceInstances(currentLogicGate, posBlockCounter, positiveSlice);
				posBlockCounter=(posBlockCounter+ 1) % 4;
				
			} else if (primaryLatch.type.equals("al")
					|| primaryLatch.type.equals("re")) {
				negativeSlice = (NegativeSLICE) this.setupTheLogicBlock(
						currentLogicGate, myNetCreator, design,
						alphabetSelector[negBlockCounter], negativeSlice);
				
				//setup the PrimaryLatch as well
				negativeSlice = (NegativeSLICE)  this.setupThePrimaryLatch(primaryLatch, alphabetSelector[posBlockCounter], currentLogicGate, negativeSlice);
				
				
				//remove the primary latch since does not have to be added once more
				model.genericLatches.remove(primaryLatch);
				
				
				this.addTheLatchToAlreadyPlacedInstances(primaryLatch, negBlockCounter, negativeSlice);
				this.addTheLogicBlockToAlreadyPlaceInstances(currentLogicGate, negBlockCounter, negativeSlice);
				negBlockCounter=(negBlockCounter+ 1) % 4;
			}

			if (posBlockCounter == 3) {
				myPlacer.placeInstance(positiveSlice);
				design.addInstance(positiveSlice);
			}
			if (negBlockCounter == 3) {
				myPlacer.placeInstance(negativeSlice);
				design.addInstance(negativeSlice);
			}

		

		}
	}

	private SLICEL_INSTANCE setupThePrimaryLatch(GenericLatch primaryLatch,
				String LETTER_OF_THE_SELECTED_LATCH,LogicGate currentLogicGate,
				SLICEL_INSTANCE currentSLICEL) {
		
		
		currentSLICEL.configure_PRIMARY_LATCH(primaryLatch, currentLogicGate, LETTER_OF_THE_SELECTED_LATCH);
			return currentSLICEL;
		}

	private void addTheLatchToAlreadyPlacedInstances(GenericLatch currentLatch, int BlockCounterNumber,SLICEL_INSTANCE currentLatchInstance) {
		alreadyPlacedInstances.put(currentLatch.output + "_"
				+ alphabetSelector[BlockCounterNumber]+_LATCH, currentLatchInstance);
		typeOfTheAlreadyPlaceInstances.put(currentLatch.output, _LATCH);
		portNubmerOfTheAlreadyPlacedInstances.put(currentLatch.output,
				alphabetSelector[BlockCounterNumber]);
	}

	private void addTheLogicBlockToAlreadyPlaceInstances(LogicGate currentLogicGate, int BlockCounterNumber,SLICEL_INSTANCE currentLogicBlockInstance) {
		alreadyPlacedInstances.put(currentLogicGate.output + "_"
				+ alphabetSelector[BlockCounterNumber]+_LOGICBLOCK, currentLogicBlockInstance);
		typeOfTheAlreadyPlaceInstances.put(currentLogicGate.output, _LOGICBLOCK);
		portNubmerOfTheAlreadyPlacedInstances.put(currentLogicGate.output,
				alphabetSelector[BlockCounterNumber]);
	}



	
	private void placeActiveLowRisingEdgeLatch(GenericLatch currentLatch,
			Design design, NetCreator myNetCreator, Model model) {
		// TODO Auto-generated method stub
		if (negBlockCounter == 0)
			negativeSlice = new NegativeSLICE("");// naming
																		// is
																		// done
																		// in
		// .setupTheLatch

		System.out.println("negBlockCounter " + negBlockCounter);
		negativeSlice = this.setupTheAdditionalLatch(currentLatch,
				myNetCreator, design, clk_buffer,
				alphabetSelector[negBlockCounter],
				negativeSlice);

		alreadyPlacedInstances.put(currentLatch.output + "_"
				+ alphabetSelector[negBlockCounter]+_LATCH,
				negativeSlice);
		typeOfTheAlreadyPlaceInstances.put(currentLatch.output, _LATCH);
		portNubmerOfTheAlreadyPlacedInstances.put(currentLatch.output,
				alphabetSelector[negBlockCounter]);

		if (negBlockCounter == 3) {
			myPlacer.placeInstance(negativeSlice);
			design.addInstance(negativeSlice);
		}

		negBlockCounter = (negBlockCounter + 1) % 4;// from
																				// 0
																						// to
																						// 3
																						// =
																						// A
																						// to
																						// D

	}

	private void placeActiveHighFallingEdgeLatch(GenericLatch currentLatch,
			Design design, NetCreator myNetCreator, Model model) {
		if (posBlockCounter == 0)
			positiveSlice = new PositiveSLICE("");// naming
																		// is
																		// done
																		// in
		// .setupTheLatch

		System.out
				.println("posBlockCounter: " + posBlockCounter);
		positiveSlice = this.setupTheAdditionalLatch(currentLatch,
				myNetCreator, design, clk_buffer,
				alphabetSelector[posBlockCounter],
				positiveSlice);

		alreadyPlacedInstances.put(currentLatch.output + "_"
				+ alphabetSelector[posBlockCounter]+_LATCH,
				positiveSlice);
		typeOfTheAlreadyPlaceInstances.put(currentLatch.output, _LATCH);
		portNubmerOfTheAlreadyPlacedInstances.put(currentLatch.output,
				alphabetSelector[posBlockCounter]);

		if (posBlockCounter == 3) {
			myPlacer.placeInstance(positiveSlice);
			design.addInstance(positiveSlice);
		}

		posBlockCounter = (posBlockCounter + 1) % 4;// from
																							// 0
																							// to
																							// 3
																							// =
																							// A
																							// to
																							// D

	}

	private SLICEL_INSTANCE setupTheAdditionalLatch(GenericLatch currentLatch,
			NetCreator myNetCreator, Design design, Instance clk_buffer2,
			String SELECTED_LETTER, SLICEL_INSTANCE myLatch) {

		// to name it correct
		if (myLatch.getName().equals("")) {
			myLatch.setName(currentLatch.output);
		} else {
			myLatch.setName(myLatch.getName() + "_" + currentLatch.output);
		}

		myLatch.configure_LATCH(currentLatch, SELECTED_LETTER);

		// connect the clk and the reset to the LATCH
		if (SELECTED_LETTER == "A")
			myNetCreator.generateNet("O", clk_buffer2, "CLK", myLatch, design,
					alreadyPlacedNets);
		myNetCreator.generateNet("I", global_reset, "SR", myLatch, design,
				alreadyPlacedNets);

		return myLatch;
	}

	private SLICEL_INSTANCE setupTheLogicBlock(LogicGate currentLogicGate,
			NetCreator myNetCreator, Design design, String SELECTED_LETTER,
			SLICEL_INSTANCE currentSlice) {

		// to name it correct
		if (currentSlice.getName().equals("")) {
			currentSlice.setName(currentLogicGate.output);
		} else {
			currentSlice.setName(currentSlice.getName() + "_"
					+ currentLogicGate.output);

		}

		// configure the logic in the LUT
		currentSlice.configure_LUT(currentLogicGate.inputs,
				currentLogicGate.outputcover.inputTable,
				currentLogicGate.outputcover.outputTable, SELECTED_LETTER);

		return currentSlice;
	}

	/*
	 * Setup the clk for the latches
	 */
	private void setupGlobalClock(Model model, Design design,
			NetCreator myNetCreator) {

		// set the clock if specified
		if (model.clocks.size() >= 1) {
			if (!model.clocks.get(0).equals("NIL"))
				clk = new IOB_BLOCK_INSTANCE(TypeOfInstance.IOB_INPUT,
						model.clocks.get(0));
		}
		// set a own clock
		else {
			clk = new IOB_BLOCK_INSTANCE(TypeOfInstance.IOB_INPUT, "my_clk");
		}
		myPlacer.placeInstance(clk);
		design.addInstance(clk);

		// Setup the Buffer for the clk as shown in the example projects
		clk_buffer = new Instance("my_clk_BUFG", PrimitiveType.BUFG);
		myPlacer.placeInstance(clk_buffer);
		design.addInstance(clk_buffer);

		// connect the clk and the clk buffer
		myNetCreator.generateNet("I", clk, "I0", clk_buffer, design,
				alreadyPlacedNets);

	}

	private void checkModelForCorrectness(Model model) throws Exception {
		for (LogicGate currentGateToBeChecked : model.logicGates) {
			for (String currentInputToBeChecked : currentGateToBeChecked.inputs) {

				// it's a primary input maybe ?
				if (model.inputs.contains(currentInputToBeChecked))
					continue;// continue with the next input
				// it is a interconnection maybe?
				if (!isAnInterconnectVariable(model.logicGates,
						currentInputToBeChecked))
					continue;
				// it is a variable provided by a latch?
				if (!isAnLatchVariable(model.genericLatches,
						currentInputToBeChecked))
					continue;
				else {
					System.err
							.print("Current Model has got inputs that are not definied correct: "
									+ currentInputToBeChecked + " ");
					Exception modelIsIncorrect_Exception = new Exception();
					throw (modelIsIncorrect_Exception);// stop the process
				}

			}
		}
	}

	private boolean isAnLatchVariable(
			CopyOnWriteArrayList<GenericLatch> genericLatches,
			String currentInputToBeChecked) {
		for (GenericLatch currentLatchToBeChecked : genericLatches) {
			if (currentLatchToBeChecked.output.equals(currentInputToBeChecked))
				return true;
		}
		return false;
	}

	private boolean isAnInterconnectVariable(
			CopyOnWriteArrayList<LogicGate> logicGatesToIterateOver,
			String currentInputToBeChecked) {

		for (LogicGate otherGateToBeComparedWith : logicGatesToIterateOver) {
			if (otherGateToBeComparedWith.output
					.equals(currentInputToBeChecked))
				return true;

		}
		return false;
	}

	private void createInputAndOutputIOBs(Model model, Design design) {
		// Create Input IOBs:
		for (String currentInput : model.inputs) {
			Instance myIOB_Input = new IOB_BLOCK_INSTANCE(
					IOB_BLOCK_INSTANCE.TypeOfInstance.IOB_INPUT, currentInput);
			myPlacer.placeInstance(myIOB_Input);
			design.addInstance(myIOB_Input);
			alreadyPlacedInstances.put(currentInput, myIOB_Input);
			typeOfTheAlreadyPlaceInstances.put(currentInput, _IOB_INPUT);
			// allows access to the input instance
			// design.getInstance(name);
		}

		// Create Output IOBs:
		for (String currentOutput : model.outputs) {
			Instance myIOB2_Output = new IOB_BLOCK_INSTANCE(
					IOB_BLOCK_INSTANCE.TypeOfInstance.IOB_OUTPUT, currentOutput
							+ _FINAL_OUTPUT);
			myPlacer.placeInstance(myIOB2_Output);
			design.addInstance(myIOB2_Output);
			// availableFinalOutputVariables.add(currentOutput);

			// since the final outputs can also be used as input variables to
			// other functions
			// also add them to the available inputs as well!
			// Interconnection has to be done as well !

			// place it as new Input
			alreadyPlacedInstances.put(currentOutput, myIOB2_Output);
			typeOfTheAlreadyPlaceInstances.put(currentOutput, _IOB_INPUT);
			// place it specifically as new Final Output
			alreadyPlacedInstances.put(currentOutput + _FINAL_OUTPUT,
					myIOB2_Output);
			typeOfTheAlreadyPlaceInstances.put(currentOutput + _FINAL_OUTPUT, _IOB_OUTPUT);

			// allows access to the output instance
			// design.getInstance(name);
		}

	}
}
