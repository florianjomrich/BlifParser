package placement;

import java.util.HashMap;

import edu.byu.ece.rapidSmith.design.Design;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.design.Net;
import edu.byu.ece.rapidSmith.design.NetType;
import edu.byu.ece.rapidSmith.design.Pin;

/**
 * 
 * @author Florian Jomrich
 *
 */
public class NetCreator {

	/**
	 * Method that combines all the necessary single steps to make a cable connection.
	 * Distinguish between a first connection or a added connection to an already existing connection.
	 */
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