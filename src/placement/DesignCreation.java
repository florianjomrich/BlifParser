package placement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

import commands.GenericLatch;
import commands.LogicGate;
import blif.Model;
import models.IOB_BLOCK_INSTANCE;
import models.IOB_BLOCK_INSTANCE.TypeOfInstance;
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
	
	//stores the nets already placed
	HashMap<String,Net> alreadyPlacedNets = new HashMap<String,Net>();
	
	//stores the latches already placed
	HashMap<String,SLICEL_INSTANCE> alreadyPlacedLatches = new HashMap<String,SLICEL_INSTANCE>();
	
	//the global clk
	IOB_BLOCK_INSTANCE clk;
	Instance clk_buffer;

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

		
		
		//setup the global clock first
		setupGlobalClock(model,design,myNetCreator,myPlacer);
		
		
		// Create the LogicGates based on SLICELs
		// continue until everything is placed
		HashMap<String,GenericLatch> genericLatchesToBeSetupAsWell = new HashMap<String,GenericLatch>();
		for(GenericLatch currentLatch : model.genericLatches){
			genericLatchesToBeSetupAsWell.put(currentLatch.input, currentLatch);
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
								
					//Check if it is needed to store the new output for the latch 
					boolean hasALatch = false;
					GenericLatch currentLatch = null;
					//store the latch output if the logic block output has to be stored in a latch
					if(genericLatchesToBeSetupAsWell.containsKey(currentLogicGate.output)){

						currentLatch=genericLatchesToBeSetupAsWell.get(currentLogicGate.output);
						hasALatch = true;
					}
					
					
					
					
					//Setup the new logic block
					SLICEL_INSTANCE mySLICEL_LUT  = new SLICEL_INSTANCE(
								currentLogicGate.output + _SLICEL);
					
			

					// configure the logic in the LUT
					mySLICEL_LUT.configure_LUT(currentLogicGate.inputs,
							currentLogicGate.outputcover.inputTable,
							currentLogicGate.outputcover.outputTable, "A",hasALatch,currentLatch);
					
					//store the SLICE also as new storage point of a latch if necessary
					if(hasALatch){
						alreadyPlacedLatches.put(currentLatch.output+_SLICEL_WITH_LATCH, mySLICEL_LUT);
					}

					
					
					
					
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
									"A" + currentNumberOfInput, mySLICEL_LUT, design, alreadyPlacedNets);
							
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
									mySLICEL_LUT, design, alreadyPlacedNets);
							
						}
						
						if (availableInterconnectVariables
								.contains(currentToBeMappedInput + _SLICEL_WITH_LATCH)) {
							Net hubert = myNetCreator.generateNet(
									"AQ",
									alreadyPlacedLatches.get(currentToBeMappedInput
											+ _SLICEL_WITH_LATCH), "A"
											+ currentNumberOfInput,
									mySLICEL_LUT, design, alreadyPlacedNets);
							
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
					
					//FOR DEBUGGING==============================
					for(LogicGate current: logicGatesToIterateOver){
						System.out.print(current.output+" ");
					}
					System.out.println("Primary Inputs available: ");
					for(String input: availablePrimaryInputVariables){
						System.out.print(input+" ");
					}
					//FOR DEBUGGING==============================
					
					
					//Now finally connect the newly established output ports
					
					//connect to the DIRECT output if necessary
					if (availableFinalOutputVariables
							.contains(currentLogicGate.output)) {

						// its a final output and has to be mapped onto the
						// IOB
						Net hans = myNetCreator.generateNet("AMUX",
								mySLICEL_LUT, "O",
								design.getInstance(currentLogicGate.output), design, alreadyPlacedNets);
						
					}
					else{
						// it is a interconnect Variable and has to be added
						// to
						// the available input variables
						availableInterconnectVariables
						.add(currentLogicGate.output + _SLICEL);
					}
					
					
					
					//connect the LATCH output as well if needed
					if(hasALatch && availableFinalOutputVariables
							.contains(currentLatch.output)){
							myNetCreator.generateNet("AQ",
									mySLICEL_LUT, "O",
									design.getInstance(currentLatch.output), design, alreadyPlacedNets);
							
							//connect the global clk as well
							myNetCreator.generateNet("O",
									clk_buffer, "CLK",
									mySLICEL_LUT, design, alreadyPlacedNets);
							
						}
						
					 else if(hasALatch){
							// it is a interconnect Variable and has to be added
							// to
							// the available input variables
							
								availableInterconnectVariables.add(currentLatch.output+_SLICEL_WITH_LATCH);
								
								//connect the global clk as well
								myNetCreator.generateNet("O",
										clk_buffer, "CLK",
										mySLICEL_LUT, design, alreadyPlacedNets);	
						}

				

				}
				// ELSE Continue with another One
			}
			//try a new round from  the remaining gates
		}

		return design;
	}

	/*
	 * Setup the clk for the latches
	 */
	private void setupGlobalClock(Model model, Design design,
			NetCreator myNetCreator, Placer myPlacer) {

		clk = new IOB_BLOCK_INSTANCE(TypeOfInstance.IOB_INPUT, "my_clk");
		myPlacer.placeInstance(clk);
		design.addInstance(clk);
		
		//Setup the Buffer for the clk as shown in the example projects
		clk_buffer = new Instance("my_clk_BUFG", PrimitiveType.BUFG);
		myPlacer.placeInstance(clk_buffer);
		design.addInstance(clk_buffer);
		
		//connect the clk and the clk buffer
		myNetCreator.generateNet("I", clk, "I0", clk_buffer, design, alreadyPlacedNets);
		
		
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
