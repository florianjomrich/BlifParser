package placement;

import java.util.HashMap;

import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.design.NetType;
import edu.byu.ece.rapidSmith.design.Pin;


public class NetCreator {

	public Net generateNet(String outputPort,Instance outputBlock,String inputPort, Instance inputBlock, Design design, HashMap<String, Net> alreadyPlacedNets){
		Net myNewNet = new Net();
		//first cable connection already exists
		//only add the new pin connection
		if(alreadyPlacedNets.containsKey(outputBlock.getName()+"."+outputPort)){
			alreadyPlacedNets.get(outputBlock.getName()+"."+outputPort).addPin(new Pin(false, inputPort, inputBlock));
			
			//add the connection to the design
			design.addNet(myNewNet);
		}
		//it's the first cabel connection to be estabilshed
		else{
			myNewNet.setName(outputBlock.getName()+"."+outputPort+"->"+inputBlock.getName()+"."+inputPort);
			myNewNet.setType(NetType.WIRE);
			myNewNet.addPin(new Pin(false,inputPort,inputBlock));
			myNewNet.addPin(new Pin(true, outputPort, outputBlock));
			
			//add it to the already established cable connections
			alreadyPlacedNets.put(outputBlock.getName()+"."+outputPort, myNewNet);
			
			//add the connection to the design
			design.addNet(myNewNet);
		}
	
		
		
		
		return myNewNet;
	}
	
}