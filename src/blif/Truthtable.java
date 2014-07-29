package blif;

import java.util.ArrayList;
import java.util.HashMap;

public class Truthtable {
	public HashMap<ArrayList<Integer>, ArrayList<Integer>> outputTable;
	public ArrayList<ArrayList<Integer>> inputTable;
	
	public Truthtable(Truthtable oldTable) {
		outputTable = new HashMap<ArrayList<Integer>, ArrayList<Integer>>();
		inputTable = new ArrayList<ArrayList<Integer>>(oldTable.inputTable.size());
		for(ArrayList<Integer> newList : oldTable.inputTable) {
			ArrayList<Integer> addedList = new ArrayList<Integer>(newList.size());
			for(Integer i : newList) {
				addedList.add(new Integer(i));
			}
			inputTable.add(addedList);
			ArrayList<Integer> resultList = oldTable.outputTable.get(newList);
			ArrayList<Integer> newResultList = new ArrayList<Integer>(resultList.size());
			for(Integer i : resultList) {
				newResultList.add(new Integer(i));
			}
			outputTable.put(addedList, newResultList);
		}
	}

	public Truthtable() {
		outputTable = new HashMap<ArrayList<Integer>, ArrayList<Integer>>();
		inputTable = new ArrayList<ArrayList<Integer>>();
	}
}
