package models;

import edu.byu.ece.rapidSmith.design.Attribute;


/**
 * Slice with a normal clk - since activ low is the default case for 
 * Xlinix FPGAs
 * @author Florian Jomrich
 *
 */
public class NegativeSLICE extends SLICEL_INSTANCE{

	public NegativeSLICE(String name_of_the_module) {
		super(name_of_the_module);
		// setup the clock inside
		this.addAttribute(new Attribute("CLKINV", "", "CLK"));
	}
	


}
