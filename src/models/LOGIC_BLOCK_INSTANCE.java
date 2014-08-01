package models;

import java.util.ArrayList;
import java.util.HashMap;

import commands.GenericLatch;

import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class LOGIC_BLOCK_INSTANCE extends Instance {

	public LOGIC_BLOCK_INSTANCE(String name_of_the_module) {

		this.setName(name_of_the_module);
		this.setType(PrimitiveType.SLICEL);

	}

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
