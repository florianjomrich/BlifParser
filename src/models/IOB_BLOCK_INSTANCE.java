package models;



import edu.byu.ece.rapidSmith.design.Attribute;
import edu.byu.ece.rapidSmith.design.Instance;
import edu.byu.ece.rapidSmith.device.PrimitiveType;

public class IOB_BLOCK_INSTANCE extends Instance{
	public  enum TypeOfInstance {
		IOB_INPUT,IOB_OUTPUT, UNKOWN
	}

	private TypeOfInstance theType;
	
	

	public IOB_BLOCK_INSTANCE(TypeOfInstance iob_Type, String name_of_the_module) {
		this.theType = iob_Type;
		this.setName(name_of_the_module);
		

		
		/*
		 * Initailiserung des Bausteins gemäß festgelegten Typ
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

	/*
	 * Initialisiert einen IOB auf dem FPGA,
	 * der boolsche Parameter gibt an, ob es sich um einen Input oder einen Output handelt
	 * danach werden die Eingabe bzw. Ausgabe - Konfigurationsparameter von Xilinx gesetzt
	 */
	private void initialize_a_IOB(boolean input) {
		this.setType(PrimitiveType.IOB);
		
		//alle nicht benötigten Parameter mit #OFF initialisieren ?? notwendig ??
		
		//Eingabe 
		if(input){
			
			/*
			 * verbinde bereits vorab das PAD des IOBs mit dem Ausgang I
			 * eine weiterführende Kabelverbindung muss dann später hinzugefügt werden
			 */
			this.addAttribute(new Attribute("BYPASS_MUX", "", "I"));
			this.addAttribute(new Attribute("IMUX", "", "I"));
			this.addAttribute(new Attribute("OUTBUF",this.getName()+".OUTBUF",""));
			this.addAttribute(new Attribute("PAD",this.getName(),""));
			/*
			 * Konfigurationsparameter von Xilinx
			 * ggf. weglassen
			 */
			this.addAttribute(new Attribute("ISTANDARD","", "LVCMOS25")) ;
		}
		
		//Ausgabe
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
			 * Konfigurationsparameter von Xilinx
			 * ggf. weglassen
			 */
			this.addAttribute(new Attribute("DRIVEATTRBOX","","12"));
			this.addAttribute(new Attribute("OSTANDARD","", "LVCMOS25"));
		}
		
		

		
	}


}
