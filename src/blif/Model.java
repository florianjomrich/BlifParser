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
	public CopyOnWriteArrayList<GenericLatch> genericLatches;
	public CopyOnWriteArrayList<LogicGate> logicGates;
	public ArrayList<ModelReference> modelReferences;	//textual description
	public ArrayList<Model> realModelReferences;		//real dependencies of objects
	
	public Model() {
		modelName = "";
		inputs = new ArrayList<String>();
		outputs = new ArrayList<String>();
		clocks = new ArrayList<String>();
		genericLatches = new CopyOnWriteArrayList<GenericLatch>();
		logicGates = new CopyOnWriteArrayList<LogicGate>();
		modelReferences = new ArrayList<ModelReference>();
		realModelReferences = new ArrayList<Model>();
	}
	
	public Model(Model copyModel) {
		modelName = new String(copyModel.modelName);
		inputs = new ArrayList<String>(copyModel.inputs.size()); 
		for(String newString : copyModel.inputs) {
			inputs.add(new String(newString));
		}

		outputs = new ArrayList<String>(copyModel.outputs.size()); 
		for(String newString : copyModel.outputs) {
			outputs.add(new String(newString));
		}
		
		clocks = new ArrayList<String>(copyModel.clocks.size()); 
		for(String newString : copyModel.clocks) {
			clocks.add(new String(newString));
		}
		
		genericLatches = new CopyOnWriteArrayList<GenericLatch>(); 
		for(GenericLatch newLatch : copyModel.genericLatches) {
			genericLatches.add(new GenericLatch(newLatch));
		}
		
		logicGates = new CopyOnWriteArrayList<LogicGate>(); 
		for(LogicGate newGate : copyModel.logicGates) {
			logicGates.add(new LogicGate(newGate));
		}
		
		modelReferences = new ArrayList<ModelReference>(copyModel.modelReferences.size()); 
		for(ModelReference newRef : copyModel.modelReferences) {
			modelReferences.add(new ModelReference(newRef));
		}
		
		realModelReferences = new ArrayList<Model>(copyModel.realModelReferences.size()); 
		for(Model newModel : copyModel.realModelReferences) {
			realModelReferences.add(new Model(newModel));
		}
	}
}
	
