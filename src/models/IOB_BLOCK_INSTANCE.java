package models;




import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

/**
 * Model representatino of an InputOutput Block
 * @author Florian Jomrich
 *
 */
public class IOB_BLOCK_INSTANCE extends Instance{
	public  enum TypeOfInstance {
		IOB_INPUT,IOB_OUTPUT, UNKOWN
	}

	private TypeOfInstance theType;
	
	

	public IOB_BLOCK_INSTANCE(TypeOfInstance iob_Type, String name_of_the_module) {
		this.theType = iob_Type;
		this.setName(name_of_the_module);
		

		
		/*
		 * Initialisation of the block based on his type
		 */
		switch (iob_Type) {
		case IOB_INPUT:
			this.initialize_a_IOB(true);
			break;
		case IOB_OUTPUT:
			this.initialize_a_IOB(false);
			break;	
		
		default:
			System.out.println("Kein Typ definiert bei der Erstellung der Instanz.");
			break;
		}
	}

	/** 
	 * Initialise an IOB on the FPGA,
	 * the boolean parameter says if it an input or an output 
	 * based on this the parameters for the xdl file of Xilinx are set.
	 */
	private void initialize_a_IOB(boolean input) {
		this.setType(PrimitiveType.IOB);
		
		//It is an input
		if(input){
			
			/* 
			 * Connect the PADs of the IOB with the Output I 
			 * the further net connections are added in the connectino process in
			 * the Design Creation class
			 */
			this.addAttribute(new Attribute("BYPASS_MUX", "", "I"));
			this.addAttribute(new Attribute("IMUX", "", "I"));
			this.addAttribute(new Attribute("PAD",this.getName(),""));
			
			/*
			 *configuration parameter of Xilinx
			 */
			this.addAttribute(new Attribute("ISTANDARD","", "LVCMOS25")) ;
		}
		
		//Output
		else{
			this.addAttribute(new Attribute("PAD",this.getName(),""));
			this.addAttribute(new Attribute("OUTBUF",this.getName()+"_OBUF",""));
			this.addAttribute(new Attribute("OUSED","","0"));
		
			/*
			 * Since the outputs can also be used as interconnect variables the output also has to be 
			 * available as input 
			 */
			this.addAttribute(new Attribute("BYPASS_MUX", "", "I"));
			this.addAttribute(new Attribute("IMUX", "", "I"));
			
			/*
			 *configuration parameter of Xilinx
			 */
			this.addAttribute(new Attribute("DRIVEATTRBOX","","12"));
			this.addAttribute(new Attribute("SLEW","","SLOW"));
			this.addAttribute(new Attribute("ISTANDARD","", "LVCMOS25"));
			this.addAttribute(new Attribute("OSTANDARD","", "LVCMOS25"));
		}
		
		

		
	}


}
