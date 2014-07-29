package commands;

public class GenericLatch extends Command {
	//	public enum Clocktype {
//		FE, RE, AH, AL, AS
//	};
//	
	public String input;
	public String output;
	public String type;
	public String control;	//das clocking signal für das Latch
	public int initVal;		//if undefined, initVal = 3
	
	public GenericLatch() {
		input = "";
		output = "";
		type = "";
		control = "";
		initVal = 3;
	}

	public GenericLatch(GenericLatch newLatch) {
		input = new String(newLatch.input);
		output = new String(newLatch.output);
		type = new String(newLatch.type);
		control = new String(newLatch.control);
		initVal = newLatch.initVal;
	}
}
