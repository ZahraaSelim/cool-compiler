package visualization;

import java.io.*;
import java.nio.file.*;

public class DotToImageConverter {
    public static void convertToPng(String dotFilePath, String outputPngPath) {
        try {
            // Prepare the command: dot -Tpng input.dot -o output.png
            ProcessBuilder pb = new ProcessBuilder("dot", "-Tpng", dotFilePath, "-o", outputPngPath);
            pb.redirectErrorStream(true); // Merge error and output streams

            // Start the process
            Process process = pb.start();

            // Read the output (for debugging or error handling)
            StringBuilder output = new StringBuilder();
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()))) {
                String line;
                while ((line = reader.readLine()) != null) {
                    output.append(line).append("\n");
                }
            }

            // Wait for the process to complete
            int exitCode = process.waitFor();
            if (exitCode == 0) {
                System.out.println("Converted " + dotFilePath + " to " + outputPngPath);
            } else {
                System.err.println("Error converting " + dotFilePath + " to PNG. Graphviz output: " + output);
                throw new IOException("Graphviz dot command failed with exit code " + exitCode);
            }

            // Verify the output file exists
            if (!Files.exists(Paths.get(outputPngPath))) {
                System.err.println("Warning: Output PNG file " + outputPngPath + " was not created.");
            }

        } catch (IOException e) {
            System.err.println("IOException during DOT to PNG conversion for " + dotFilePath + ": " + e.getMessage());
        } catch (InterruptedException e) {
            System.err.println("Interrupted during DOT to PNG conversion for " + dotFilePath + ": " + e.getMessage());
            Thread.currentThread().interrupt(); // Restore interrupted status
        }
    }
}