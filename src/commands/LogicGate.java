package commands;

import java.util.ArrayList;

import blif.Truthtable;

public class LogicGate extends Command {
	public ArrayList<String> inputs;
	public String output;
	public Truthtable outputcover;
}
