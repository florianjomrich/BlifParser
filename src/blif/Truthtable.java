package blif;

import java.util.ArrayList;
import java.util.HashMap;

public class Truthtable {
	public HashMap<ArrayList<Integer>, ArrayList<Integer>> outputTable;
	public ArrayList<ArrayList<Integer>> inputTable;
	
	public Truthtable(Truthtable oldTable) {
		outputTable = (HashMap<ArrayList<Integer>, ArrayList<Integer>>) oldTable.outputTable.clone();
		inputTable = (ArrayList<ArrayList<Integer>>) oldTable.inputTable.clone();
	}

	public Truthtable() {
		outputTable = new HashMap<ArrayList<Integer>, ArrayList<Integer>>();
		inputTable = new ArrayList<ArrayList<Integer>>();
	}
}
