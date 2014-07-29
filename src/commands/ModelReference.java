package commands;

import java.util.HashMap;

public class ModelReference {
	public String name;
	public HashMap<String, String> formalActualList;

	public ModelReference() {
		name = "";
		formalActualList = new HashMap<String, String>();
	}
	
	public ModelReference(ModelReference newRef) {
		name = new String(newRef.name);
		formalActualList = new HashMap<String, String>();
		for(String key : newRef.formalActualList.keySet()) {
			formalActualList.put(new String(key), new String(newRef.formalActualList.get(key)));
		}
	}
}
