package blif;

import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;

import commands.ClockConstraint;
import commands.DelayConstraint;
import commands.FsmDescription;
import commands.GenericLatch;
import commands.LibraryGate;
import commands.LogicGate;
import commands.ModelReference;
import commands.SubfileReference;

public class Model {
	public String modelName;
	public ArrayList<String> inputs;
	public ArrayList<String> outputs;
	public ArrayList<String> clocks;
	
	//commands
	public ArrayList<ClockConstraint> clockConstraints;
	public ArrayList<DelayConstraint> delayConstraints;
	public ArrayList<FsmDescription> fsmDescriptions;
	public CopyOnWriteArrayList<GenericLatch> genericLatches;
	public ArrayList<LibraryGate> libraryGates;
	public CopyOnWriteArrayList<LogicGate> logicGates;
	public ArrayList<ModelReference> modelReferences;
	public ArrayList<SubfileReference> subfileReference;
	
	public Model() {
		modelName = "";
		inputs = new ArrayList<String>();
		outputs = new ArrayList<String>();
		clocks = new ArrayList<String>();
		clockConstraints = new ArrayList<ClockConstraint>();
		delayConstraints = new ArrayList<DelayConstraint>();
		fsmDescriptions = new ArrayList<FsmDescription>();
		genericLatches = new CopyOnWriteArrayList<GenericLatch>();
		libraryGates = new ArrayList<LibraryGate>();
		logicGates = new CopyOnWriteArrayList<LogicGate>();
		modelReferences = new ArrayList<ModelReference>();
		subfileReference = new ArrayList<SubfileReference>();
	}
}
