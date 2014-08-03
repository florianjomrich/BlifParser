package placement;

import java.util.concurrent.CopyOnWriteArrayList;

import blif.Model;
import commands.GenericLatch;
import commands.LogicGate;

public class CorrectnessChecker {

	public void checkModelForCorrectness(Model model) throws Exception {
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
}