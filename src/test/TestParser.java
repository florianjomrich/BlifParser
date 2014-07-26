package test;

import commands.GenericLatch;
import commands.LogicGate;
import blif.Model;
import blif.Parser;

public class TestParser {

	public static void main(String[] args) {
		TestParser myTestParser = new TestParser();
		Parser myParser = new Parser();
		Model model = null;
		try {
		 model = myParser.parseFile("blif\\testBlif.blif");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		myTestParser.testLatch(model);
		myTestParser.testLogicGate(model);
		
	}
	
	private void testLatch(Model model){
		for(GenericLatch currentLatch : model.genericLatches){
			System.out.println("Latch_Input: "+currentLatch.input);
			System.out.println("Latch_Output: "+currentLatch.output);
			System.out.println("Latch_Type: "+currentLatch.type);
			System.out.println("Latch_Clock: "+currentLatch.control);
			System.out.println("Latch_InitialValue: "+currentLatch.initVal);
			System.out.println("________________________________________");
		}
			
	}
	
	private void testLogicGate(Model model){
		for(LogicGate currentLogicGate: model.logicGates){
			
		}
	}

}
