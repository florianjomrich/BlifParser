package commands;

import java.util.ArrayList;

import blif.Truthtable;

public class LogicGate extends Command {
	public ArrayList<String> inputs;
	public String output;
	public Truthtable outputcover;

	public LogicGate() {
		inputs = new ArrayList<String>();
		output = "";
		outputcover = new Truthtable();
	}
	
	public LogicGate(LogicGate newGate) {
		inputs = new ArrayList<String>(newGate.inputs.size()); 
		for(String newString : newGate.inputs) {
			inputs.add(new String(newString));
		}
		
		output = new String(newGate.output);
		
		outputcover = new Truthtable(newGate.outputcover);
	}
}
