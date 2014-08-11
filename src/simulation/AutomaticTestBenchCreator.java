package simulation;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

import edu.byu.ece.rapidSmith.design.Design;

/**
 * Class that creates a Verilog-Test-Bench for the user to 
 * test the created verilog file which is based on the given BLIF-file
 * @author Florian Jomrich
 *
 */
public class AutomaticTestBenchCreator {

	/**
	 * Setups the Testbench by reading out the given verilog-file that
	 * describes the BLIF-model.
	 */
	public void setupAutomaticTestBench(String verilogFileNameRouted,
			Design design) {

		File testBenchFolder = new File(design.getName() + " final TestBench"); //create a folder named like the project
		testBenchFolder.mkdir();

		// wait for the external routing and placing process to be finished
		File placedAndRoutedVerilogFile = new File(verilogFileNameRouted);
		if(!placedAndRoutedVerilogFile.exists()) {
			 System.err.print("File not found: "+verilogFileNameRouted);
			 return;
		}

		// now copy the File
		Path source = Paths.get(verilogFileNameRouted);
		Path destination = Paths.get(testBenchFolder.getPath() + "/"
				+ design.getName() + " PLACED AND ROUTED.v");

		try {
			Files.delete(destination);// delete old files !!
			} catch (IOException e) {
			// Overwrite the file anyway if it already exists
			//e.printStackTrace();
		}
		
		//has to be done seperatley if completly new folder
		try {
			Files.copy(source, destination);
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// copy all Xilinx Primtives that are needed for Simulation into the
		// Folder as well
		File xilinxPrimitives = new File("Verilog Xilinx primitives");
		File[] listOfFiles = xilinxPrimitives.listFiles();

		for (File currentFile : listOfFiles) {
			Path primitivePath = Paths.get(currentFile.getPath());
			Path destinationOfPrimmitive = Paths.get(testBenchFolder.getPath()
					+ "/" + currentFile.getName());
			try {
				Files.copy(primitivePath, destinationOfPrimmitive);
			} catch (IOException e) {
				// Overwrite the file anyway if it already exists
			}
		}

		// finally create the TestBenchFile so that the user only has to input
		// his values
		this.createTestBenchFile(destination, design, testBenchFolder);

	}

	/**
	 * Creates the Testbench by reading out the given verilog-file that
	 * describes the BLIF-model.
	 */
	private void createTestBenchFile(Path fileName, Design design,
			File testBenchFolder) {
		byte[] encoded = null;
		try {
			encoded = Files.readAllBytes(fileName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String fileContent = new String(encoded, Charset.defaultCharset());
		String[] fileContentSplitted = fileContent.split("\\r?\\n");

		// stores the testBenchFile
		StringBuffer bufferForTestBenchContent = new StringBuffer();

		// to connect everything to the Device Under Test finally
		ArrayList<String> readInInputs = new ArrayList<String>();
		ArrayList<String> readInConnections = new ArrayList<String>();

		// start filling up the file
		bufferForTestBenchContent.append("`timescale 1ns / 1ps \n \n");
		bufferForTestBenchContent.append("module TEST; \n \n// Inputs \n");

		// add inputs
		for (String currentLine : fileContentSplitted) {
			if (currentLine.contains("input")) {
				String[] currentLineSplited = currentLine.split(" ");
//				System.out.println(currentLineSplited[3]);
				readInInputs.add(currentLineSplited[3]);
				readInConnections.add(currentLineSplited[3]);
				bufferForTestBenchContent.append("reg " + currentLineSplited[3]
						+ " ;\n");
			}

		}

		bufferForTestBenchContent.append("\n// Outputs \n");
		// add outputs
		for (String currentLine : fileContentSplitted) {
			if (currentLine.contains("output") || currentLine.contains("inout")) {
				// inout is also only used as an output just because of temporal
				// use of the output as a new input it is placed as an inout
				// but nothing actually is put into the system at this point
				String[] currentLineSplited = currentLine.split(" ");
				// System.out.println(currentLineSplited[3]);
				readInConnections.add(currentLineSplited[3]);
				bufferForTestBenchContent.append("wire "
						+ currentLineSplited[3] + " ;\n");

			}
		}

		bufferForTestBenchContent
				.append(" \n// Instantiate the Unit Under Test (UUT) \n \n");

		bufferForTestBenchContent.append(design.getName() + " uut (\n");

		// connect everything
		for (String currentPort : readInConnections) {
			bufferForTestBenchContent.append("." + currentPort + " ("
					+ currentPort + " ),\n");
		}
		// since the last port may not have a ,
		bufferForTestBenchContent.deleteCharAt(bufferForTestBenchContent
				.length() - 2);
		bufferForTestBenchContent.append(");\n\n");

		bufferForTestBenchContent
				.append("initial begin\n// Initialize Inputs\n");
		for (String currentInput : readInInputs) {
			bufferForTestBenchContent.append(currentInput + "  = 0;\n");
		}

		bufferForTestBenchContent
				.append("\n\n// Wait 100 ns for global reset to finish\n");

		bufferForTestBenchContent
				.append("	#100;\n\n	// Add stimulus here\n\nend\n\nendmodule");

//		System.out.println("\n \n" + bufferForTestBenchContent.toString());

		this.writeTheFile(bufferForTestBenchContent.toString(),
				testBenchFolder, design);
	}

	/**
	 * Finally writes the created test-bench in the folder 
	 */
	private void writeTheFile(String testBenchContent, File testBenchFolder,
			Design design) {

		File testBenchFile = new File(testBenchFolder.getPath() + "/"
				+ design.getName() + "_TEST_BENCH.v");
		if (testBenchFile.exists())
			testBenchFile.delete();// delete if it already existed
		try {
			FileWriter writer = new FileWriter(testBenchFile, true);

			writer.write(testBenchContent);

			writer.flush();
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
