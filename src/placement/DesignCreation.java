package placement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

import commands.GenericLatch;
import commands.LogicGate;
import blif.Model;
import models.IOB_BLOCK_INSTANCE;
import models.SLICEL_INSTANCE;
import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.design.NetType;
import edu.byu.ece.rapidSmith.design.Pin;
import edu.byu.ece.rapidSmith.device.PrimitiveSite;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class DesignCreation {

	// stores all Variables which where already set onto the device
	ArrayList<String> availablePrimaryInputVariables = new ArrayList<String>();
	ArrayList<String> availableInterconnectVariables = new ArrayList<String>();
	ArrayList<String> availableFinalOutputVariables = new ArrayList<String>();

	// for mapping the truth table on the available - CURRENTLY NOT USED
	// char[] alphabetSelector = { 'A', 'B', 'C', 'D' };

	String _SLICEL = "_SLICEL";
	String _SLICEL_WITH_LATCH = "_SLICEL WITH LATCH";

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

		// My own Helper-classes for faster processing of routine steps
		Placer myPlacer = new Placer(design, primitiveSites);
		NetCreator myNetCreator = new NetCreator();

		// place the input and output IOBs
		this.createInputAndOutputIOBs(model, myPlacer, design);

		// Get the logicGates which have to be placed
		CopyOnWriteArrayList<LogicGate> logicGatesToIterateOver = model.logicGates;
	//	CopyOnWriteArrayList<GenericLatch> genericLatchesToIterateOver = model.genericLatches;
	
		
		// First check for correctness of the given model! Otherwise the later
		// routines won't terminate
		// Does not help if Loops are done in the specification
		// e.g. LogicFunction A has output for B and B has output for A and both
		// need each other as inputs
		this.checkModelForCorrectness(model, logicGatesToIterateOver);

		// Create the LogicGates based on SLICELs
		// continue until everything is placed
		HashMap<String,String> genericLatchesToBeSetupAsWell = new HashMap<String,String>();
		for(GenericLatch currentLatch : model.genericLatches){
			genericLatchesToBeSetupAsWell.put(currentLatch.input, currentLatch.output);
		}
		
		while (!logicGatesToIterateOver.isEmpty()) {
		
			// Implement each .name with his own SLICEL -> can be found easier
			// later on
			// just by using the design
			// another solution for 4 LUTs used in one SLICE should be
			// considered
			// mapping has to be found therefore
			for (LogicGate currentLogicGate : logicGatesToIterateOver) {
				boolean allInputVariablesAlreadyAvailable = true;

				// only Variables that are already available are processed in
				// the run
				for (String currentInput : currentLogicGate.inputs) {
					if (!(availablePrimaryInputVariables.contains(currentInput) || availableInterconnectVariables
							.contains(currentInput + _SLICEL) || availableInterconnectVariables.contains(currentInput+_SLICEL_WITH_LATCH))) {
						allInputVariablesAlreadyAvailable = false;
//						System.out.println("\n Remaining inputs: ");
//						for(String currentInput2: currentLogicGate.inputs){
//							System.out.print(currentInput2+" ");
//							
//						}
						break;
					}

				}

				if (allInputVariablesAlreadyAvailable) {
					
					boolean hasALatch = false;
					//change the output if the logic block output has to be stored in a latch
					if(genericLatchesToBeSetupAsWell.containsKey(currentLogicGate.output)){
						System.out.println("OUT BEFORE: "+currentLogicGate.output );
						currentLogicGate.output=genericLatchesToBeSetupAsWell.get(currentLogicGate.output);
						
						System.out.println("OUT AFTER: "+currentLogicGate.output );
						hasALatch = true;
					}
					
					
					SLICEL_INSTANCE mySLICEL_LUT  = null;
					//Function does not have to be stored in a LATCH
					if(!hasALatch){
						// create a new SLICEL
						mySLICEL_LUT = new SLICEL_INSTANCE(
								currentLogicGate.output + _SLICEL);
					}
					//Function also has to be stored in a LATCH
					else{
						mySLICEL_LUT = new SLICEL_INSTANCE(
								currentLogicGate.output + _SLICEL_WITH_LATCH);
					}
			

					// configure the logic in the LUT
					mySLICEL_LUT.configure_LUT(currentLogicGate.inputs,
							currentLogicGate.outputcover.inputTable,
							currentLogicGate.outputcover.outputTable, "A",hasALatch);

					// System.out.println("WAS HERE");

					// connect the IOBs or other LUTs to the Input of the new
					// LUT
					int currentNumberOfInput = 1;
					for (String currentToBeMappedInput : currentLogicGate.inputs) {
						System.out.print(currentToBeMappedInput);
						// it is a primary input variable -> direct conection to
						// input iob
						if (availablePrimaryInputVariables
								.contains(currentToBeMappedInput)) {
							Net hubert = myNetCreator.generateNet("I",
									design.getInstance(currentToBeMappedInput),
									"A" + currentNumberOfInput, mySLICEL_LUT);
							design.addNet(hubert);
						}

						// it is an interconnect Variable -> connection to
						// related SLICEL
						if (availableInterconnectVariables
								.contains(currentToBeMappedInput + _SLICEL)) {
							Net hubert = myNetCreator.generateNet(
									"AMUX",
									design.getInstance(currentToBeMappedInput
											+ _SLICEL), "A"
											+ currentNumberOfInput,
									mySLICEL_LUT);
							design.addNet(hubert);
						}
						if (availableInterconnectVariables
								.contains(currentToBeMappedInput + _SLICEL_WITH_LATCH)) {
							Net hubert = myNetCreator.generateNet(
									"AQ",
									design.getInstance(currentToBeMappedInput
											+ _SLICEL_WITH_LATCH), "A"
											+ currentNumberOfInput,
									mySLICEL_LUT);
							design.addNet(hubert);
						}
						// Error Handling does not seem to work!!
						// else{
						// System.err.println("RAPIDSMITH_PARSER ERRROR: Could not find a connection port for logic: "+currentToBeMappedInput);
						// }
						System.out.println(" connected");

						currentNumberOfInput++;// increase for next input
					}

					myPlacer.placeInstance(mySLICEL_LUT);
					design.addInstance(mySLICEL_LUT);

					// current .name has already been added to the FPGA now and
					// can
					// be
					// removed
					// next iteration starts with one less
					logicGatesToIterateOver.remove(currentLogicGate);
					System.out.println("Remaining unplaced Logic Gates: "
							+ logicGatesToIterateOver.size());
					
					//FOR DEBUGGING
					for(LogicGate current: logicGatesToIterateOver){
						System.out.print(current.output+" ");
					}
					System.out.println("Primary Inputs available: ");
					for(String input: availablePrimaryInputVariables){
						System.out.print(input+" ");
					}
					//FOR DEBUGGING
					
					//connect to outputs if necessary
					if (availableFinalOutputVariables
							.contains(currentLogicGate.output)) {

						// its a final output and has to be mapped onto the
						// IOB
						
						//connect to the LATCH output
						if(hasALatch){
							Net hans = myNetCreator.generateNet("AQ",
									mySLICEL_LUT, "O",
									design.getInstance(currentLogicGate.output));
							design.addNet(hans);
						}
						//connect to the DIRECT output
						else{
							Net hans = myNetCreator.generateNet("AMUX",
									mySLICEL_LUT, "O",
									design.getInstance(currentLogicGate.output));
							design.addNet(hans);
						}
					

					} else {
						// it is a interconnect Variable and has to be added
						// to
						// the available input variables
						if(hasALatch){
							availableInterconnectVariables.add(currentLogicGate.output+_SLICEL_WITH_LATCH);
						}
						else{
							availableInterconnectVariables
							.add(currentLogicGate.output + _SLICEL);
						}
						
					}

				}
				// ELSE Continue with another One
			}
			//try a new round from  the remaining gates
		}

		return design;
	}

	private void checkModelForCorrectness(Model model,
			CopyOnWriteArrayList<LogicGate> logicGatesToIterateOver)
			throws Exception {
		for (LogicGate currentGateToBeChecked : logicGatesToIterateOver) {
			for (String currentInputToBeChecked : currentGateToBeChecked.inputs) {

				// it's a primary input maybe ?
				if (model.inputs.contains(currentInputToBeChecked))
					continue;// continue with the next input
				// it is a interconnection maybe?
				if (!isAnInterconnectVariable(logicGatesToIterateOver,
						currentInputToBeChecked))
					continue;
				//it is a variable provided by a latch?
				if (!isAnLatchVariable(model.genericLatches,currentInputToBeChecked))
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

	private boolean isAnLatchVariable(CopyOnWriteArrayList<GenericLatch> genericLatches,
			String currentInputToBeChecked) {
		for(GenericLatch currentLatchToBeChecked : genericLatches){
			if(currentLatchToBeChecked.output.equals(currentInputToBeChecked))return true;
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

	private void createInputAndOutputIOBs(Model model, Placer myPlacer,
			Design design) {
		// Create Input IOBs:
		for (String currentInput : model.inputs) {
			Instance myIOB_Input = new IOB_BLOCK_INSTANCE(
					IOB_BLOCK_INSTANCE.TypeOfInstance.IOB_INPUT, currentInput);
			myPlacer.placeInstance(myIOB_Input);
			design.addInstance(myIOB_Input);
			availablePrimaryInputVariables.add(currentInput);
			// allows access to the input instance
			// design.getInstance(name);
		}

		// Create Output IOBs:
		for (String currentOutput : model.outputs) {
			Instance myIOB2_Output = new IOB_BLOCK_INSTANCE(
					IOB_BLOCK_INSTANCE.TypeOfInstance.IOB_OUTPUT, currentOutput);
			myPlacer.placeInstance(myIOB2_Output);
			design.addInstance(myIOB2_Output);
			availableFinalOutputVariables.add(currentOutput);
			
			//since the final outputs can also be used as input variables to other functions
			//also add them to the available inputs as well!
			//Interconnection has to be done as well !
			availablePrimaryInputVariables.add(currentOutput);
			
			// allows access to the output instance
			// design.getInstance(name);
		}

	}
}
