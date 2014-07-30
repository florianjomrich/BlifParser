package models;

import java.util.ArrayList;
import java.util.HashMap;

import commands.GenericLatch;

import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class LATCH_INSTANCE extends Instance {

	public LATCH_INSTANCE(String name_of_the_module) {

		this.setName(name_of_the_module);
		this.setType(PrimitiveType.SLICEL);

	}

	public void configure_LATCH(GenericLatch currentLatch,
			String LETTER_OF_THE_SELECTED_LATCH) {

		
			this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
					+ "FFMUX", "", LETTER_OF_THE_SELECTED_LATCH+"X"));

			
			
			
			
			// configuration Parameter for the latch or FlipFlop

			// first select if it is an edge triggered FlipFlop or a level
			// triggered Latch
			switch (currentLatch.type) {

			// falling edge trigered -> FF
			case "fe":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#FF"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK_B"));
				break;
			// rising edge trigered -> FF
			case "re":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#FF"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;
			// active high -> Latch
			case "ah":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				
				break;
			// active low -> Latch
			case "al":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "SYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK_B"));
				break;
			// asynchronous -> Latch
			case "as":
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "ASYNC"));
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;

			// if nothing is specified we assume a LATCH as well (which is
			// triggered asyncron)
			default:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FF", "", "#LATCH"));
				this.addAttribute(new Attribute("SYNC_ATTR", "", "ASYNC"));
				
				//setup the clock inside
				this.addAttribute(new Attribute("CLKINV","","CLK"));
				break;
			}

			
			// now select to which value the Latch/FlipFlop will be initializied
			// to !!
			switch (currentLatch.initVal) {
			//initialze to 0
			case 0:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FFSRINIT", "", "SRINIT0"));
				break;
				//initialze to 1	
			case 1:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FFSRINIT", "", "SRINIT1"));
				break;
			//don't care -> we assume 0 	
			case 2:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FFSRINIT", "", "SRINIT0"));
				break;
			//undefined	-> we also assume 0 
			case 3:
				this.addAttribute(new Attribute(LETTER_OF_THE_SELECTED_LATCH
						+ "FFSRINIT", "", "SRINIT0"));
				break;

			default:
				break;
			}
			

		}



}
