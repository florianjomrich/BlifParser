package commands;

public class GenericLatch extends Command {
//	public enum Clocktype {
//		FE, RE, AH, AL, AS
//	};
//	
	public String input;
	public String output;
	public String type;
	public String control;//das clocking signal für das Latch
	public int initVal = 3;	//if undefined, initVal = 3
}
