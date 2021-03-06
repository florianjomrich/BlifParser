package placement;
/*
 * Copyright (c) 2010 Brigham Young University
 * 
 * This file is part of the BYU RapidSmith Tools.
 * 
 * BYU RapidSmith Tools is free software: you may redistribute it 
 * and/or modify it under the terms of the GNU General Public License 
 * as published by the Free Software Foundation, either version 2 of 
 * the License, or (at your option) any later version.
 * 
 * BYU RapidSmith Tools is distributed in the hope that it will be 
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU 
 * General Public License for more details.
 * 
 * A copy of the GNU General Public License is included with the BYU 
 * RapidSmith Tools. It can be found at doc/gpl2.txt. You may also 
 * get a copy of the license at <http://www.gnu.org/licenses/>.
 * 
 */


import simulation.AutomaticTestBenchCreator;
import blif.Model;
import edu.byu.ece.rapidSmith.design.*;
import edu.byu.ece.rapidSmith.util.FileConverter;
import edu.byu.ece.rapidSmith.util.StreamGobbler;

/**
 * The class which invokes all the necessary processing steps to get from the BLIF-model representation to 
 * the the xdl file and form there to the ncd file and finally to the verilog simulation file
 * @author Florian Jomrich
 */

public class RapidsmithParser{
	
	//has to be set to your own system path
	String xilinxPath = "F:\\Xilinix\\14.7\\ISE_DS\\ISE\\bin\\nt\\";
	
	/**
	 * Starts all the necessary steps which are processed to receive finally an simulateable Verilog 
	 * representation of the BLIF-file
	 * @param model - The model created by the File-Parser which
	 * now has to be mapped onto the FPGA
	 * @throws Exception 
	 */
	public void startProcessing(Model model) throws Exception{
		DesignCreation myDesignCreater = new DesignCreation();
		
		//remove / seperators for easier handling of files
//		String name = "HelloWorld";
		String name = model.modelName.replace("/", "");
		
		//create the rapidsmith model
		Design design = myDesignCreater.createDesign(model,name);
				
				
				// Now let's write out our new design
				// We'll print the standard XDL comments out
				String fileName = "xdlFileCreated/"+design.getName() +".xdl";
				

				design.saveXDLFile(fileName, true);
				System.out.println("XDL File created.");
				
			
				
				FileConverter.convertXDL2NCD(fileName);
				System.out.println("NCD File created.");

				//now do the further processing steps to the final verilog File ready for Simulation			
				String ncdFileName = "xdlFileCreated/"+design.getName() +".ncd";
				String ncdRoutedFileName = "ncdFileAfterPlaceAndRoute/"+design.getName()+"Routed.ncd";
				this.placeAndRoute(ncdFileName, ncdRoutedFileName);
				System.out.println("NCD File Placed And Routed");
				
				String verilogFileNameUnrouted = "simulationFileUnrouted/"+design.getName()+"Unrouted.v";
				this.createSimulationModel(ncdFileName, verilogFileNameUnrouted, "Built unrouted Verilog-Simulationfile");
				
				String verilogFileNameRouted = "simulationFilePlaceAndRouted/"+design.getName()+"PlaceAndRouted.v";
				this.createSimulationModel(ncdRoutedFileName, verilogFileNameRouted, "Built placed and routed Verilog-Simulationfile");
				
				
				System.out.println("Create automatic Test-Bench for Routed Verilog-File");
				AutomaticTestBenchCreator creator = new AutomaticTestBenchCreator();
				creator.setupAutomaticTestBench(verilogFileNameRouted,design);
				
	}
	
	


	

	/**
	 * Creates a placed and routed version of the current unrouted ncdFile
	 */
	private void placeAndRoute(String ncdFileName,String ncdRoutedFileName){
		//-w to overwrite already existing files
		String command = xilinxPath+"par -w " + ncdFileName + " " + ncdRoutedFileName;

		
			Process p = null;
			try {
				p = Runtime.getRuntime().exec(command);
				Thread.sleep(5000);//since "par" does not finish correctly after the process
//				p.waitFor();//waits until the process is finished
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			StreamGobbler err = new StreamGobbler(p.getErrorStream(), false);
			StreamGobbler input = new StreamGobbler(p.getInputStream(), false);
			input.start();
			err.start();
	
	}
	
	/**
	 * Creates the Verilog-simulation file 
	 */
	private void createSimulationModel(String ncdFileName, String VerilogFileName, String buildingMessage){
		String command = xilinxPath+"netgen -w -ofmt  verilog " + ncdFileName + " " + VerilogFileName;

		
		Process p = null;
		try {
			p = Runtime.getRuntime().exec(command);
			p.waitFor();//waits until the process is finished
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		StreamGobbler err = new StreamGobbler(p.getErrorStream(), false);
		StreamGobbler input = new StreamGobbler(p.getInputStream(), false);
		input.start();
		err.start();
		
		System.out.println(buildingMessage);//to specify which file has been builded
	}
}
