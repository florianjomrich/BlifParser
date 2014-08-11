package models;

import java.util.ArrayList;
import java.util.HashMap;

import commands.GenericLatch;
import commands.LogicGate;
import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;
/**
 * Internal SLICE representation 
 * @author Florian Jomrich
 *
 */
public class SLICEL_INSTANCE extends Instance {
	
	String TypeOfBlock;

	public SLICEL_INSTANCE(String name_of_the_module) {

		this.setName(name_of_the_module);
		this.setType(PrimitiveType.SLICEL);

	}

	/**
	 * Sets the internal configuration of  the latch if it is a primary latch
	 */
	public void configure_PRIMARY_LATCH(GenericLatch currentLatch,LogicGate currentLogicBlock,
			String LETTER_OF_THE_SELECTED_LATCH) {

		String selectedLUT_Output = "";
		if (currentLogicBlock.inputs.size()>6){
			System.err.print("Too many Outputs specified");
			Exception e = new Exception();
			try {
				throw e;
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		if(currentLogicBlock.inputs.size()==6){
			selectedLUT_Output="O6";
		}
		else{
			selectedLUT_Output="O5";
		}
		
		//connect the latch with the output gate of the LUT
		this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH + "FFMUX",
				"", selectedLUT_Output));

		this.configure_TheRestOfTheLatch(currentLatch,LETTER_OF_THE_SELECTED_LATCH);

	}
	
	/**
	 * Sets the internal configuration of  the latch if it is NO primary latch
	 */
	public void configure_LATCH(GenericLatch currentLatch,
			String LETTER_OF_THE_SELECTED_LATCH) {

		//connect the latch with the input gate
		this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH + "FFMUX",
				"", LETTER_OF_THE_SELECTED_LATCH + "X"));

		this.configure_TheRestOfTheLatch(currentLatch, LETTER_OF_THE_SELECTED_LATCH);

	}
	
	/**
	 * Configuration steps that have to be done for each type of LATCh
	 * whether it is a primary latch or not 
	 */
	private void configure_TheRestOfTheLatch(GenericLatch currentLatch, String LETTER_OF_THE_SELECTED_LATCH) {
		// set the Latch/FlipFlop to act asyncronous
				//otherwise a Clock Enable Signal (CE) would have to be added to the FF/Latch input as well
				this.addAttribute(new Attribute("SYNC_ATTR", "", "ASYNC"));
				
				//connect the reset cable to the Latch/FlipFlop for a synchronous reset
				this.addAttribute(new Attribute("SRUSED", "", "0"));
				

				// configuration Parameter for the latch or FlipFlop

				// first select if it is an edge triggered FlipFlop or a level
				// triggered Latch
				System.out.println("TYPE:" + currentLatch.type);
				switch (currentLatch.type) {

				// falling edge trigered -> FF
				case "fe":
					this.addAttribute(new Attribute(
							LETTER_OF_THE_SELECTED_LATCH + "FF", "", "#FF"));
					break;
				// rising edge trigered -> FF
				case "re":
					this.addAttribute(new Attribute(
							LETTER_OF_THE_SELECTED_LATCH + "FF", "", "#FF"));
					break;
				// active high -> Latch
				case "ah":
					this.addAttribute(new Attribute(
							LETTER_OF_THE_SELECTED_LATCH + "FF", "", "#LATCH"));
					break;
				// active low -> Latch
				case "al":
					this.addAttribute(new Attribute(
							LETTER_OF_THE_SELECTED_LATCH + "FF", "", "#LATCH"));
					break;
				// asynchronous -> only a Buffer should be handeld by the parser as a
				// Logic Block
				// and therefore not performed in here
				case "as":
					System.err
							.print("Asynchronous Latch should be handeld as a normal logic Block. Not as a Latch.");
					break;

				// if nothing is specified we assume a LATCH as well (which is
				// triggered asyncron)
				// per Default a latch is active low
				default:
					this.addAttribute(new Attribute(
							LETTER_OF_THE_SELECTED_LATCH + "FF", "", "#LATCH"));
					break;
				}

				// now select to which value the Latch/FlipFlop will be initializied
				// to !!
				switch (currentLatch.initVal) {
				// initialze to 0
				case 0:
					this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
							+ "FFSRINIT", "", "SRINIT0"));
					break;
				// initialze to 1
				case 1:
					this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
							+ "FFSRINIT", "", "SRINIT1"));
					break;
				// don't care -> we assume 0
				case 2:
					this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
							+ "FFSRINIT", "", "SRINIT0"));
					break;
				// undefined -> we also assume 0
				case 3:
					this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
							+ "FFSRINIT", "", "SRINIT0"));
					break;

				default:
					System.err.print("InitVal is unspecified");
					break;
				}
	}


	/**
	 * Configure the LUT which contains the boolean functions
	 * given through the .name specification in the 
	 */
	public void configure_LUT(ArrayList<String> inputs,
			ArrayList<ArrayList<Integer>> inputTable,
			HashMap<ArrayList<Integer>, ArrayList<Integer>> outputTable,
			String LETTER_OF_THE_SELECTED_LUT) {

		String selectedLUT = "";
		String selectedOutput = "";
		StringBuffer theBooleanFunction = new StringBuffer();
		if (inputs.size() >= 7) {
			System.err
			.print("TOO MANY INPUTS FOR THE CONFIGURATION OF THE LUT");
		} else if (inputs.size() == 6) {
			selectedLUT = LETTER_OF_THE_SELECTED_LUT + "6LUT";
			selectedOutput = "O6";
			theBooleanFunction.append("#LUT:" + selectedOutput + "=");

		} else {
			selectedLUT = LETTER_OF_THE_SELECTED_LUT + "5LUT";
			selectedOutput = "O5";
			theBooleanFunction.append("#LUT:" + selectedOutput + "=");
		}

		for (ArrayList<Integer> currentLineOfTruthTable : inputTable) {
			Integer outputValue = outputTable.get(currentLineOfTruthTable).get(
					0);
			if (outputValue == 0) {
				theBooleanFunction.append("~(");
			} else if (outputValue == 1) {
				theBooleanFunction.append("(");
			} else {
				System.err
						.print("RAPIDSMITHPARSER ERROR: Output is unspecified");
			}

			boolean firstVariable = true;// to check if values have been set
											// before
			for (int iterator = 1; iterator <= currentLineOfTruthTable.size(); iterator++) {
				String booleanValue = null;

				switch (currentLineOfTruthTable.get(iterator - 1)) {
				case 0:
					booleanValue = "~A" + iterator;
					break;
				case 1:
					booleanValue = "A" + iterator;
					break;
				case 3:// has to be setup as well otherwise xilinx throws an
						// error
					booleanValue = "(~A" + iterator + "+A" + iterator + ")";
					break;

				default:
					break;
				}
				if (booleanValue != "") {
					if (firstVariable) {
						theBooleanFunction.append(booleanValue);
						firstVariable = false;
					} else {
						theBooleanFunction.append("*" + booleanValue);
					}
				}

			}
			// not the last value?
			if (inputTable.indexOf(currentLineOfTruthTable) < inputTable.size() - 1)
				theBooleanFunction.append(")+");
			else
				theBooleanFunction.append(")");
		}

		this.addAttribute(new Attribute(selectedLUT, "", theBooleanFunction
				.toString()));

		// Finally the inner connection to the output port from the LUT

		// DIRECT OUTPUT
		this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT + "OUTMUX",
				"", selectedOutput));

		
			


	}


}
