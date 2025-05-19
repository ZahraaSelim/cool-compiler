# COOL Compiler

This repository contains a complete compiler for the **Classroom Object-Oriented Language (COOL)**, implemented in Java as part of the **CSE422 - Programming Languages and Compilers** course. The compiler processes COOL source files (`.cl`) and generates MIPS assembly code (`.asm`), along with visualizations of the parse tree, abstract syntax tree (AST), and control flow graph (CFG) as PNG images. It adheres to the specifications in the COOL Reference Manual.

## Features

- **Lexical Analysis**: Tokenizes COOL source code using ANTLR, handling integers, identifiers, strings, comments, keywords, and operators.
- **Syntax Analysis**: Parses tokens into a parse tree, enforcing COOL's syntax with proper operator precedence and associativity.
- **AST Construction**: Builds an abstract syntax tree for semantic analysis and code generation.
- **Semantic Analysis**: Performs type checking, validates inheritance, and ensures type safety using COOL's type system.
- **Intermediate Code Generation**: Generates Three-Address Code (TAC) as an intermediate representation.
- **Visualization**: Produces PNG images of parse trees, ASTs, and CFGs, converted from Graphviz `.dot` files.
- **Optimization**: Applies optimizations like constant folding and dead code elimination to the TAC.
- **Code Generation**: Translates optimized TAC into MIPS assembly, compatible with SPIM.
- **Error Handling**: Reports lexical, syntactic, and semantic errors to `.errors` files.

## Project Structure

```
cool-compiler/
├── src/                    # Java source code and ANTLR grammars
│   ├── ast/                # AST node definitions
│   ├── codegen/            # Machine code generation (MIPS assembly)
│   ├── intermediate/       # Intermediate code generation (TAC)
│   ├── Optimization/       # Code optimization
│   ├── parser/             # ANTLR-generated lexer/parser
│   ├── semantic/           # Semantic analysis
│   ├── visualization/      # Parse tree, AST, CFG visualizers
│   ├── CoolLexer.g4        # Lexer grammar
│   ├── CoolParser.g4       # Parser grammar
│   └── Main.java           # Compiler entry point
├── samples/                # Sample COOL files (.cl) and generated files
├── lib/                    # Dependencies (ANTLR runtime)
├── out/                    # (Unused in this implementation)
├── report/                 # Project report (LaTeX files)
└── README.md               # This file
```

## Prerequisites

- **Java**: Version 17 or higher
- **ANTLR**: Version 4.9.2 (included in `lib/`)
- **Graphviz**: For converting `.dot` files to PNG images
- **SPIM**: For running generated MIPS assembly

## Setup

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/yourusername/cool-compiler.git
   cd cool-compiler
   ```

2. **Install Dependencies**:

   - **Java 17**: [Download JDK](https://www.oracle.com/java/technologies/javase/jdk17-archive-downloads.html)
   - **Graphviz**: [Download Graphviz](https://graphviz.org/download/)
   - **SPIM**: [Download SPIM](http://spimsimulator.sourceforge.net/)
   - **ANTLR**: Ensure `antlr-4.9.2-complete.jar` is in `lib/`. Download from [ANTLR](https://www.antlr.org/download.html) if missing.

3. **Compile the Project**:

   Compile the Java source files, including ANTLR-generated classes:

   ```bash
   javac -cp lib/antlr-4.9.2-complete.jar src/*.java src/*/*.java
   ```

   This generates `.class` files in the respective directories.

## Usage

1. **Prepare Input Files**:

   - Place COOL source files (`.cl`) in the `samples/` directory or its subdirectories. For example, `samples/test/example.cl`.

2. **Run the Compiler**:

   ```bash
   java -cp lib/antlr-4.9.2-complete.jar:src Main
   ```

   The compiler recursively processes all `.cl` files in `samples/` and generates output files in the same directory as each input file. For each `.cl` file (e.g., `samples/test/example.cl`), the following are produced:

   - **MIPS assembly**: `example.asm`
   - **Visualizations**: 
     - Parse tree: `example.parse.png` (from `example.parse.dot`)
     - AST: `example.ast.png` (from `example.ast.dot`)
     - CFG: `example.cfg.png` (from `example.cfg.dot`)
   - **TAC**: `example.tac`
   - **Optimized TAC**: `example.opt.tac`
   - **Errors** (if any): `example.errors`

   If semantic errors or exceptions occur, processing stops for that file, and errors are logged to the `.errors` file. Progress is logged to the console (e.g., "Processing: samples/test/example.cl", "Parse tree visualization generated: samples/test/example.parse.png").

3. **Run Generated Assembly**:

   - Use SPIM to execute the `.asm` files:

     ```bash
     spim -file samples/test/example.asm
     ```

4. **View Visualizations**:

   - Open `.png` files (e.g., `samples/test/example.parse.png`) in the input file's directory to inspect parse trees, ASTs, and CFGs.

## Example

Given a COOL file `samples/example.cl`:

```cool
class Main inherits IO {
    main(): SELF_TYPE {
        out_string("Hello, COOL!\n")
    };
};
```

Run the compiler:

```bash
java -cp lib/antlr-4.9.2-complete.jar:src Main
```

Outputs in `samples/`:

- `example.asm`: MIPS assembly
- `example.parse.png`: Parse tree visualization
- `example.ast.png`: AST visualization
- `example.cfg.png`: CFG visualization
- `example.tac`: TAC
- `example.opt.tac`: Optimized TAC
- `example.errors`: Error log (if errors occur)

Console output:

```
Processing: samples/example.cl
Parse tree visualization generated: samples/example.parse.png
AST visualization generated: samples/example.ast.png
TAC generated: samples/example.tac
CFG visualization generated: samples/example.cfg.png
Optimized TAC generated: samples/example.opt.tac
Assembly code generated: samples/example.asm
```

If errors occur (e.g., semantic issues), you might see:

```
Semantic errors found. See samples/example.errors
```

## Documentation

- The project report (`report/project-report.tex`) provides a detailed explanation of each compiler phase, implementation details, and alignment with the COOL specification. Compile it with a LaTeX editor (e.g., Overleaf) to generate `project-report.pdf`.
- Refer to the [COOL Reference Manual](https://theory.stanford.edu/~aiken/software/cool/cool-manual.pdf) for language details.


## Acknowledgments

- **COOL Reference Manual**: For the language specification.
