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


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

import simulation.AutomaticTestBenchCreator;
import blif.Model;
import edu.byu.ece.rapidSmith.design.*;
import edu.byu.ece.rapidSmith.device.*;
import edu.byu.ece.rapidSmith.util.FileConverter;
import edu.byu.ece.rapidSmith.util.StreamGobbler;

/**
 * A simple class to illustrate how to use some of the basic methods in RapidSmith.
 * @author Chris Lavin
 */

public class RapidsmithParser{

	String xilinxPath = "F:\\Xilinix\\14.7\\ISE_DS\\ISE\\bin\\nt\\";
	
	/**
	 * 
	 * @param model - The model created by the File-Parser which
	 * now has to be mapped onto the FPGA
	 * @throws Exception 
	 */
	public void startProcessing(Model model) throws Exception{
		DesignCreation myDesignCreater = new DesignCreation();
		System.out.println(model.inputs.size());
		String name = "helloWorld";
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
	
	


	


	private void placeAndRoute(String ncdFileName,String ncdRoutedFileName){
		String command = xilinxPath+"par -p -r -w " + ncdFileName + " " + ncdRoutedFileName;

		
			Process p = null;
			try {
				p = Runtime.getRuntime().exec(command);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			StreamGobbler err = new StreamGobbler(p.getErrorStream(), false);
			StreamGobbler input = new StreamGobbler(p.getInputStream(), false);
			input.start();
			err.start();
	
	}
	
	private void createSimulationModel(String ncdFileName, String VerilogFileName, String buildingMessage){
		String command = xilinxPath+"netgen -w -ofmt verilog " + ncdFileName + " " + VerilogFileName;

		
		Process p = null;
		try {
			p = Runtime.getRuntime().exec(command);
		} catch (IOException e) {
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
