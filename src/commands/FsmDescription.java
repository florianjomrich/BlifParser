package commands;

import java.util.ArrayList;
import java.util.HashMap;

import blif.FSMTupel;

public class FsmDescription {
	private int numInputs;
	private int numOutputs;
	private int numTerms;
	private int numStates;
	private String resetState;
	private HashMap<FSMTupel, FSMTupel> stateTransitionTable;
	private ArrayList<String> latchOrderList;
	private HashMap<String, String> codeMapping;
}
