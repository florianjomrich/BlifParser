package models;

import edu.byu.ece.rapidSmith.design.Attribute;



public class NegativeSLICE extends SLICEL_INSTANCE{

	public NegativeSLICE(String name_of_the_module) {
		super(name_of_the_module);
		// setup the clock inside
		this.addAttribute(new Attribute("CLKINV", "", "CLK"));
	}
	


}
