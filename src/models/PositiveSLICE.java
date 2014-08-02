package models;

import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class PositiveSLICE extends SLICEL_INSTANCE{

	public PositiveSLICE(String name_of_the_module) {
		super(name_of_the_module);
		// TODO Auto-generated constructor stub
		// setup the clock inside
		this.addAttribute(new Attribute("CLKINV", "", "CLK_B"));
	}

	
}
