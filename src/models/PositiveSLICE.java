package models;

import edu.byu.ece.rapidSmith.design.Attribute;

/**
 * Slice with an inverted clk - since activ high is not the default case for 
 * Xlinix FPGAs
 * @author Florian Jomrich
 *
 */
public class PositiveSLICE extends SLICEL_INSTANCE{

	public PositiveSLICE(String name_of_the_module) {
		super(name_of_the_module);
		// TODO Auto-generated constructor stub
		// setup the clock inside
		this.addAttribute(new Attribute("CLKINV", "", "CLK_B"));
	}

	
}
