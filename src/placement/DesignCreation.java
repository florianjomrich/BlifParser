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
import models.LATCH_INSTANCE;
import models.LOGIC_BLOCK_INSTANCE;
import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.design.NetType;
import edu.byu.ece.rapidSmith.design.Pin;
import edu.byu.ece.rapidSmith.device.PrimitiveSite;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class DesignCreation {


//	ArrayList<String> availableFinalOutputVariables = new ArrayList<String>();
	
	//stores the nets already placed
	HashMap<String,Net> alreadyPlacedNets = new HashMap<String,Net>();
	
	//stores the latches and logic gates already placed
	HashMap<String,String> portNubmerOfTheAlreadyPlacedInstances = new HashMap<String,String>();
	HashMap<String,Instance> alreadyPlacedInstances = new HashMap<String,Instance>();
	
	// for mapping the gates and latches
		 String[] alphabetSelector = { "A", "B", "C", "D" };
	
	//the global clk
	IOB_BLOCK_INSTANCE clk;
	Instance clk_buffer;

	String _SLICEL = "_SLICEL";
	String _LATCH = "_LATCH";
	String _FINAL_OUTPUT = "_FINAL_OUTPUT";

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
		
		//Bigger design !!!
//		design.setPartName("xc6slx150csg484-3");

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

		
		
		//setup the global clock first as well
		setupGlobalClock(model,design,myNetCreator,myPlacer);
		
		
		//Dump-Place the Latches based on SLICELs (no connection established in the beginning
		
		//to iterate over the different latches
		int latchCounter=0;
		int elementCounter1=0;
		LATCH_INSTANCE myLatch=null;
		for(GenericLatch currentLatch : model.genericLatches){
			if(latchCounter==0)myLatch = new LATCH_INSTANCE("");//naming is done in .setupTheLatch
			
			System.out.println("latchCounter "+latchCounter);
			myLatch = this.setupTheLatch(currentLatch,myNetCreator,design,clk_buffer,alphabetSelector[latchCounter],myLatch);
			
			alreadyPlacedInstances.put(currentLatch.output+"_"+alphabetSelector[latchCounter],myLatch);
			portNubmerOfTheAlreadyPlacedInstances.put(currentLatch.output,alphabetSelector[latchCounter]);
		
			
			if(latchCounter==3 || elementCounter1 == model.genericLatches.size()-1){
				myPlacer.placeInstance(myLatch);
				design.addInstance(myLatch);
			}
			
			latchCounter++;//from 0 to 3 = A to D
			elementCounter1++;
		}
		
		// Dump-Place the LogicGates based on SLICELs
		//Setup the new logic block
		int logicBlockCounter=0;
		int elementCounter2=0;
		LOGIC_BLOCK_INSTANCE myLogicBlock=null;
		for(LogicGate currentLogicGate : model.logicGates){
			if(logicBlockCounter==0) myLogicBlock = new LOGIC_BLOCK_INSTANCE("");//naming is done in the .setupTheLogicBlock
			myLogicBlock = this.setupTheLogicBlock(currentLogicGate,myNetCreator,design,alphabetSelector[logicBlockCounter],myLogicBlock);
			
			alreadyPlacedInstances.put(currentLogicGate.output+"_"+alphabetSelector[logicBlockCounter],myLogicBlock);
			portNubmerOfTheAlreadyPlacedInstances.put(currentLogicGate.output,alphabetSelector[logicBlockCounter]);
			
			System.out.println("logicBLockCounter "+logicBlockCounter);
			
			if(logicBlockCounter==3 || elementCounter2 == model.logicGates.size()-1){
				myPlacer.placeInstance(myLogicBlock);
				design.addInstance(myLogicBlock);
			}
			
			logicBlockCounter=(logicBlockCounter+1)%4;//from 0 to 3 = A to D
			elementCounter2++;
		}

		
		//Now connect all the Latches
		for(GenericLatch currentLatch : model.genericLatches){
			String currentLATCH_OUTPUT_PORT = portNubmerOfTheAlreadyPlacedInstances.get(currentLatch.output);
			LATCH_INSTANCE currentLatchInstance = (LATCH_INSTANCE) alreadyPlacedInstances.get(currentLatch.output+"_"+currentLATCH_OUTPUT_PORT);
			
			
			String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances.get(currentLatch.input);
			
			if(alreadyPlacedInstances.get(currentLatch.input+"_"+current_INPUT_PORT) instanceof LATCH_INSTANCE){
				LATCH_INSTANCE otherLatchInstance = (LATCH_INSTANCE) alreadyPlacedInstances.get(currentLatch.input+"_"+current_INPUT_PORT);
				
				//now connect the current with the other Latch
				myNetCreator.generateNet(current_INPUT_PORT+"Q", otherLatchInstance, currentLATCH_OUTPUT_PORT+"X", currentLatchInstance, design, alreadyPlacedNets);
			}
			else if(alreadyPlacedInstances.get(currentLatch.input+"_"+current_INPUT_PORT) instanceof LOGIC_BLOCK_INSTANCE){
				LOGIC_BLOCK_INSTANCE otherLogic_BLOCK_INSTANCE = (LOGIC_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentLatch.input+"_"+current_INPUT_PORT);
				myNetCreator.generateNet(current_INPUT_PORT+"MUX", otherLogic_BLOCK_INSTANCE, currentLATCH_OUTPUT_PORT+"X", currentLatchInstance, design, alreadyPlacedNets);
			}
			else{
				IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentLatch.input);
				myNetCreator.generateNet("I", otherIOB_BLOCK_INSTANCE, currentLATCH_OUTPUT_PORT+"X", currentLatchInstance, design, alreadyPlacedNets);
			}
			
			
			//check if output is final output
			if(alreadyPlacedInstances.containsKey(currentLatch.output+_FINAL_OUTPUT)){
					IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentLatch.output+_FINAL_OUTPUT);
					myNetCreator.generateNet(currentLATCH_OUTPUT_PORT+"Q", currentLatchInstance, "O", otherIOB_BLOCK_INSTANCE, design, alreadyPlacedNets);
				}
			
		}
		
		//and the Logic-Blocks
		for(LogicGate currentLogicGate : model.logicGates){
			
			String currentLOGIC_BLOCK_OUTPUT_PORT = portNubmerOfTheAlreadyPlacedInstances.get(currentLogicGate.output);
			
			LOGIC_BLOCK_INSTANCE currentLogicGateInstance = (LOGIC_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentLogicGate.output+"_"+currentLOGIC_BLOCK_OUTPUT_PORT);
			
			int currentNumberOfInput = 1;
			for (String currentToBeMappedInput : currentLogicGate.inputs) {
				
				String current_INPUT_PORT = portNubmerOfTheAlreadyPlacedInstances.get(currentToBeMappedInput);
				
				if(alreadyPlacedInstances.get(currentToBeMappedInput+"_"+current_INPUT_PORT) instanceof LATCH_INSTANCE){
					LATCH_INSTANCE otherLatchInstance = (LATCH_INSTANCE) alreadyPlacedInstances.get(currentToBeMappedInput+"_"+current_INPUT_PORT);
					
					//now connect the current with the other Latch
					myNetCreator.generateNet(current_INPUT_PORT+"Q", otherLatchInstance, currentLOGIC_BLOCK_OUTPUT_PORT+currentNumberOfInput, currentLogicGateInstance, design, alreadyPlacedNets);
				}
				else if(alreadyPlacedInstances.get(currentToBeMappedInput+"_"+current_INPUT_PORT) instanceof LOGIC_BLOCK_INSTANCE){
					LOGIC_BLOCK_INSTANCE otherLogic_BLOCK_INSTANCE = (LOGIC_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentToBeMappedInput+"_"+current_INPUT_PORT);
					myNetCreator.generateNet(current_INPUT_PORT+"MUX", otherLogic_BLOCK_INSTANCE, currentLOGIC_BLOCK_OUTPUT_PORT+currentNumberOfInput, currentLogicGateInstance, design, alreadyPlacedNets);
				}
				else{
					IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentToBeMappedInput);
					myNetCreator.generateNet("I", otherIOB_BLOCK_INSTANCE, currentLOGIC_BLOCK_OUTPUT_PORT+currentNumberOfInput, currentLogicGateInstance, design, alreadyPlacedNets);
				}
				currentNumberOfInput++;
			}
			
			//check if output is final output
			if(alreadyPlacedInstances.containsKey(currentLogicGate.output+_FINAL_OUTPUT)){
				IOB_BLOCK_INSTANCE otherIOB_BLOCK_INSTANCE = (IOB_BLOCK_INSTANCE) alreadyPlacedInstances.get(currentLogicGate.output+_FINAL_OUTPUT);
				myNetCreator.generateNet(currentLOGIC_BLOCK_OUTPUT_PORT+"MUX", currentLogicGateInstance, "O", otherIOB_BLOCK_INSTANCE, design, alreadyPlacedNets);
				}
		}
		
		
		
		
//		// continue until everything is placed
//		HashMap<String,GenericLatch> genericLatchesToBeSetupAsWell = new HashMap<String,GenericLatch>();
//		for(GenericLatch currentLatch : model.genericLatches){
//			genericLatchesToBeSetupAsWell.put(currentLatch.input, currentLatch);
//			}
//		
//		while (!logicGatesToIterateOver.isEmpty()) {
//		
//			// Implement each .name with his own SLICEL -> can be found easier
//			// later on
//			// just by using the design
//			// another solution for 4 LUTs used in one SLICE should be
//			// considered
//			// mapping has to be found therefore
//			for (LogicGate currentLogicGate : logicGatesToIterateOver) {
//				boolean allInputVariablesAlreadyAvailable = true;
//
//				// only Variables that are already available are processed in
//				// the run
//				for (String currentInput : currentLogicGate.inputs) {
//					if (!(availablePrimaryInputVariables.contains(currentInput) || alreadyPlacedSLICES
//							.containsKey(currentInput) || alreadyPlacedSLICES.containsKey(currentInput))) {
//						allInputVariablesAlreadyAvailable = false;
//						break;
//					}
//
//				}
//				
//				
//				
//			
//				if (allInputVariablesAlreadyAvailable) {
//								
//					//Check if it is needed to store the new output for the latch 
//					boolean hasALatch = false;
//					GenericLatch currentLatch = null;
//					//store the latch output if the logic block output has to be stored in a latch
//					if(genericLatchesToBeSetupAsWell.containsKey(currentLogicGate.output)){
//
//						currentLatch=genericLatchesToBeSetupAsWell.get(currentLogicGate.output);
//						hasALatch = true;
//					}
//					
//					
//					
//					
//					
//					// connect the IOBs or other LUTs to the Input of the new
//					// LUT
//					int currentNumberOfInput = 1;
//					for (String currentToBeMappedInput : currentLogicGate.inputs) {
//						
//						System.out.print(currentToBeMappedInput);
//						
//						
//						// it is a primary input variable -> direct conection to
//						// input iob
//						if (availablePrimaryInputVariables
//								.contains(currentToBeMappedInput)) {
//							Net hubert = myNetCreator.generateNet("I",
//									design.getInstance(currentToBeMappedInput),
//									"A" + currentNumberOfInput, mySLICEL_LUT, design, alreadyPlacedNets);
//							
//						}
//
//						// it is an interconnect Variable -> connection to
//						// related SLICEL
//						if (availableInterconnectVariables
//								.contains(currentToBeMappedInput + _SLICEL)) {
//							Net hubert = myNetCreator.generateNet(
//									"AMUX",
//									design.getInstance(currentToBeMappedInput
//											+ _SLICEL), "A"
//											+ currentNumberOfInput,
//									mySLICEL_LUT, design, alreadyPlacedNets);
//							
//						}
//						
//						if (availableInterconnectVariables
//								.contains(currentToBeMappedInput + _LATCH)) {
//							Net hubert = myNetCreator.generateNet(
//									"AQ",
//									alreadyPlacedLatches.get(currentToBeMappedInput
//											+ _LATCH), "A"
//											+ currentNumberOfInput,
//									mySLICEL_LUT, design, alreadyPlacedNets);
//							
//						}
//					
//						System.out.println(" connected");
//
//						currentNumberOfInput++;// increase for next input
//					}
//					
//					
//					
//			
//
//					// current .name has already been added to the FPGA now and
//					// can
//					// be
//					// removed
//					// next iteration starts with one less
//					logicGatesToIterateOver.remove(currentLogicGate);
//					
//					//FOR DEBUGGING==============================
//					System.out.println("Remaining unplaced Logic Gates: "
//							+ logicGatesToIterateOver.size());
//					
//					
//					for(LogicGate current: logicGatesToIterateOver){
//						System.out.print(current.output+" ");
//					}
//					System.out.println("\n Primary Inputs available: ");
//					for(String input: availablePrimaryInputVariables){
//						System.out.print(input+" ");
//					}
//					//FOR DEBUGGING==============================
//					
//					
//					//Now finally connect the newly established output ports
//					this.connectTheOutputPorts(currentLogicGate,design,myNetCreator,mySLICEL_LUT,hasALatch,currentLatch);
//					
//				
//
//				}
//				// ELSE Continue with another One
//			}
//			//try a new round from  the remaining gates
//		}

		return design;
	}

	private LATCH_INSTANCE setupTheLatch(GenericLatch currentLatch,
			NetCreator myNetCreator, Design design, Instance clk_buffer2, String SELECTED_LETTER, LATCH_INSTANCE myLatch) {
		
		//to name it correct
		if(myLatch.getName().equals("")){
			myLatch.setName(currentLatch.output);
		}
		else{
			myLatch.setName(myLatch.getName()+"_"+currentLatch.output);
		}
		
		
		myLatch.configure_LATCH(currentLatch,SELECTED_LETTER);
		
		//connect the clk to the LATCH
		if(SELECTED_LETTER=="A")myNetCreator.generateNet("O", clk_buffer2, "CLK", myLatch, design, alreadyPlacedNets);
	
		return myLatch;
	}

	private LOGIC_BLOCK_INSTANCE setupTheLogicBlock(LogicGate currentLogicGate, NetCreator myNetCreator, Design design,String SELECTED_LETTER, LOGIC_BLOCK_INSTANCE myLogicBlock) {
		
		//to name it correct
		if(myLogicBlock.getName().equals("")){
			myLogicBlock.setName(currentLogicGate.output);
		}
		else{
			myLogicBlock.setName(myLogicBlock.getName()+"_"+currentLogicGate.output);

		}
	
	// configure the logic in the LUT
	myLogicBlock.configure_LUT(currentLogicGate.inputs,
			currentLogicGate.outputcover.inputTable,
			currentLogicGate.outputcover.outputTable, SELECTED_LETTER);
	
	
	return myLogicBlock;
	}

//	private void connectTheOutputPorts(LogicGate currentLogicGate, Design design, NetCreator myNetCreator, LOGIC_BLOCK_INSTANCE mySLICEL_LUT, boolean hasALatch, GenericLatch currentLatch) {
//		//connect to the DIRECT output if necessary
//		if (availableFinalOutputVariables
//				.contains(currentLogicGate.output)) {
//
//			// its a final output and has to be mapped onto the
//			// IOB
//			myNetCreator.generateNet("AMUX",
//					mySLICEL_LUT, "O",
//					design.getInstance(currentLogicGate.output), design, alreadyPlacedNets);
//			
//		}
//		else{
//			// it is a interconnect Variable and has to be added
//			// to
//			// the available input variables
//			availableInterconnectVariables
//			.add(currentLogicGate.output + _SLICEL);
//		}
//		
//		
//		
//		//connect the LATCH output as well if needed
//		if(hasALatch && availableFinalOutputVariables
//				.contains(currentLatch.output)){
//				myNetCreator.generateNet("AQ",
//						mySLICEL_LUT, "O",
//						design.getInstance(currentLatch.output), design, alreadyPlacedNets);
//				
//				//connect the global clk as well
//				myNetCreator.generateNet("O",
//						clk_buffer, "CLK",
//						mySLICEL_LUT, design, alreadyPlacedNets);
//				
//			}
//			
//		 else if(hasALatch){
//				// it is a interconnect Variable and has to be added
//				// to
//				// the available input variables
//				
//					availableInterconnectVariables.add(currentLatch.output+_LATCH);
//					
//					//connect the global clk as well
//					myNetCreator.generateNet("O",
//							clk_buffer, "CLK",
//							mySLICEL_LUT, design, alreadyPlacedNets);	
//			}
//
//		
//	}

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
			alreadyPlacedInstances.put(currentInput,myIOB_Input);
			// allows access to the input instance
			// design.getInstance(name);
		}

		// Create Output IOBs:
		for (String currentOutput : model.outputs) {
			Instance myIOB2_Output = new IOB_BLOCK_INSTANCE(
					IOB_BLOCK_INSTANCE.TypeOfInstance.IOB_OUTPUT, currentOutput+_FINAL_OUTPUT);
			myPlacer.placeInstance(myIOB2_Output);
			design.addInstance(myIOB2_Output);
//			availableFinalOutputVariables.add(currentOutput);
			
			//since the final outputs can also be used as input variables to other functions
			//also add them to the available inputs as well!
			//Interconnection has to be done as well !
			
			//place it as new Input
			alreadyPlacedInstances.put(currentOutput,myIOB2_Output);
			
			//place it specifically as new Final Output
			alreadyPlacedInstances.put(currentOutput+_FINAL_OUTPUT,myIOB2_Output);
			
			// allows access to the output instance
			// design.getInstance(name);
		}

	}
}
