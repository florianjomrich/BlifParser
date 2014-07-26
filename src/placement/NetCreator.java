package placement;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.design.NetType;
import edu.byu.ece.rapidSmith.design.Pin;


public class NetCreator {

	public Net generateNet(String inputPort,Instance inputBlock,String outputPort, Instance outputBlock){
		Net myNewNet = new Net();
		
		myNewNet.setName(inputBlock.getName()+"."+inputPort+"->"+outputBlock.getName()+"."+outputPort);
		myNewNet.setType(NetType.WIRE);
		myNewNet.addPin(new Pin(true,outputPort,outputBlock));
		myNewNet.addPin(new Pin(false, inputPort, inputBlock));
		
		return myNewNet;
	}
	
}
