import org.antlr.v4.runtime.tree.ParseTree;
import parser.*;
import ast.*;
import semantic.*;
import intermediate.*;
import codegen.*;
import optimization.*;
import visualization.*;

import org.antlr.v4.runtime.*;
import java.io.*;
import java.nio.file.*;
import java.util.*;

public class Main {
    public static void main(String[] args) {
        Path samplesDir = Paths.get("samples");

        // Find all .cl files recursively in samples/
        List<Path> coolFiles = new ArrayList<>();
        try {
            Files.walk(samplesDir)
                    .filter(path -> path.toString().endsWith(".cl"))
                    .forEach(coolFiles::add);
        } catch (IOException e) {
            System.err.println("Error: Could not read samples directory: " + e.getMessage());
            return;
        }

        if (coolFiles.isEmpty()) {
            System.err.println("Warning: No .cl files found in samples directory");
            return;
        }

        for (Path inputFile : coolFiles) {
            String fileName = inputFile.getFileName().toString();
            String baseName = fileName.substring(0, fileName.lastIndexOf(".cl"));
            Path sampleDir = inputFile.getParent();  // same directory as .cl file
            System.out.println("Processing: " + inputFile);

            try {
                CharStream input = CharStreams.fromPath(inputFile);
                CoolLexer lexer = new CoolLexer(input);
                CommonTokenStream tokens = new CommonTokenStream(lexer);
                CoolParser parser = new CoolParser(tokens);
                parser.setErrorHandler(new BailErrorStrategy());
                ParseTree tree = parser.program();

                // Parse Tree Visualization
                ParseTreeVisualizer parseTreeVisualizer = new ParseTreeVisualizer();
                Path parseDotFile = sampleDir.resolve(baseName + ".parse.dot");
                Path parsePngFile = sampleDir.resolve(baseName + ".parse.png");
                parseTreeVisualizer.visualize(tree, parseDotFile.toString());
                DotToImageConverter.convertToPng(parseDotFile.toString(), parsePngFile.toString());
                System.out.println("Parse tree visualization generated: " + parsePngFile);

                // AST
                ASTBuilder astBuilder = new ASTBuilder();
                ProgramNode ast = (ProgramNode) astBuilder.visit(tree);

                ASTVisualizer astVisualizer = new ASTVisualizer();
                Path astDotFile = sampleDir.resolve(baseName + ".ast.dot");
                Path astPngFile = sampleDir.resolve(baseName + ".ast.png");
                astVisualizer.visualize(ast, astDotFile.toString());
                DotToImageConverter.convertToPng(astDotFile.toString(), astPngFile.toString());
                System.out.println("AST visualization generated: " + astPngFile);

                // Semantic Analysis
                SemanticAnalyzer semanticAnalyzer = new SemanticAnalyzer();
                List<String> errors = semanticAnalyzer.analyze(ast);
                Path errorFile = sampleDir.resolve(baseName + ".errors");
                if (!errors.isEmpty()) {
                    try (PrintWriter writer = new PrintWriter(errorFile.toFile())) {
                        for (String error : errors) {
                            writer.println(error);
                        }
                    }
                    System.out.println("Semantic errors found. See " + errorFile);
                    continue;
                }

                // TAC Generation
                TACGenerator tacGenerator = new TACGenerator(semanticAnalyzer.getClassTable(), semanticAnalyzer.getSymbolTable());
                TACProgram tacProgram = tacGenerator.generate(ast);
                Path tacFile = sampleDir.resolve(baseName + ".tac");
                try (PrintWriter writer = new PrintWriter(tacFile.toFile())) {
                    writer.println(tacProgram);
                }
                System.out.println("TAC generated: " + tacFile);

                // CFG
                CFGVisualizer cfgVisualizer = new CFGVisualizer();
                Path cfgDotFile = sampleDir.resolve(baseName + ".cfg.dot");
                Path cfgPngFile = sampleDir.resolve(baseName + ".cfg.png");
                cfgVisualizer.visualize(tacProgram, cfgDotFile.toString());
                DotToImageConverter.convertToPng(cfgDotFile.toString(), cfgPngFile.toString());
                System.out.println("CFG visualization generated: " + cfgPngFile);

                // Optimization
                ProgramOptimizer optimizer = new ProgramOptimizer();
                TACProgram optimizedTacProgram = optimizer.optimize(tacProgram);
                Path optTacFile = sampleDir.resolve(baseName + ".opt.tac");
                try (PrintWriter writer = new PrintWriter(optTacFile.toFile())) {
                    writer.println(optimizedTacProgram);
                }
                System.out.println("Optimized TAC generated: " + optTacFile);

                // Assembly
                CodeGenerator codeGenerator = new CodeGenerator(semanticAnalyzer.getClassTable());
                AssemblyProgram asmProgram = codeGenerator.generate(optimizedTacProgram);
                Path asmFile = sampleDir.resolve(baseName + ".asm");
                try (PrintWriter writer = new PrintWriter(asmFile.toFile())) {
                    writer.println(asmProgram);
                }
                System.out.println("Assembly code generated: " + asmFile);

            } catch (Exception e) {
                System.err.println("Error processing " + fileName + ": " + e.getMessage());
                Path errorFile = inputFile.getParent().resolve(baseName + ".errors");
                try (PrintWriter writer = new PrintWriter(errorFile.toFile())) {
                    writer.println("Error: " + e.getMessage());
                    e.printStackTrace(writer);
                } catch (IOException ioEx) {
                    System.err.println("Error writing to " + errorFile + ": " + ioEx.getMessage());
                }
            }
        }
    }
}
