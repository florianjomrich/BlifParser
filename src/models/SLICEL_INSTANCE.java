package models;

import java.util.ArrayList;
import java.util.HashMap;

import commands.GenericLatch;

import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class SLICEL_INSTANCE extends Instance {

	public SLICEL_INSTANCE(String name_of_the_module) {

		this.setName(name_of_the_module);
		this.setType(PrimitiveType.SLICEL);

	}

	public void configure_LUT(ArrayList<String> inputs,
			ArrayList<ArrayList<Integer>> inputTable,
			HashMap<ArrayList<Integer>, ArrayList<Integer>> outputTable,
			String LETTER_OF_THE_SELECTED_LUT, boolean hasALatch,
			GenericLatch currentLatch) {

		String selectedLUT = "";
		String selectedOutput = "";
		StringBuffer theBooleanFunction = new StringBuffer();
		if (inputs.size() >= 7) {
			System.out.print("TO MANY INPUTS FOR THE CONFIGURATION OF THE LUT");
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

		// if a LATCH OUTPUT is needed as well
		if (hasALatch) {
			this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
					+ "FFMUX", "", selectedOutput));

			
			
			
			
			// configuration Parameter for the latch or FlipFlop

			// first select if it is an edge triggered FlipFlop or a level
			// triggered Latch
			switch (currentLatch.type) {

			// falling edge trigered -> FF
			case "fe":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#FF"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK_B"));
				break;
			// rising edge trigered -> FF
			case "re":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#FF"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;
			// active high -> Latch
			case "ah":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				
				break;
			// active low -> Latch
			case "al":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK_B"));
				break;
			// asynchronous -> Latch
			case "as":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "ASYNC"));
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;

			// if nothing is specified we assume a LATCH as well (which is
			// triggered asyncron)
			default:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "ASYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;
			}

			
			// now select to which value the Latch/FlipFlop will be initializied
			// to !!
			switch (currentLatch.initVal) {
			//initialze to 0
			case 0:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FFSRINIT", "", "SRINIT0"));
				break;
				//initialze to 1	
			case 1:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FFSRINIT", "", "SRINIT1"));
				break;
			//don't care -> we assume 0 	
			case 2:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LUT
						+ "FFSRINIT", "", "SRINIT0"));
				break;
			//undefined	-> nothing is set!
			case 3:

				break;

			default:
				break;
			}
			

		}

	}

}
