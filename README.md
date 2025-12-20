# CSE233 - Assignment 2 (Lab 5: Process Management)

## Overview
This repository contains the code examples and explanations required by **Assignment 2** for the Operating Systems course (CSE233). The exercises follow Lab 5 and demonstrate:
- `fork()` and basic process creation
- Background processes and job control (simple shell demo)
- The role of the **linker** with a multi-file example
- The role of the **loader** and how to inspect dynamic libraries with `ldd`

## Structure
- `src/` - C source files and a small shell demo script
- `bin/` - Binaries produced by `make`
- `Makefile` - Builds all examples and provides helpful targets
- `answers.txt` - Written explanations required by the assignment
- `LICENSE` - MIT license

## How to build and run (Linux)
1. Build everything:
   ```bash
   make
   ```
2. Run the fork example:
   ```bash
   make run_process_creation
   ```
3. Run the linker example:
   ```bash
   make run_linked_program
   ```
4. Run the simple program and inspect dynamic libs:
   ```bash
   make run_simple_program
   make ldd_simple
   ```
5. Demonstrate background jobs (open a terminal and run):
   ```bash
   bash src/background_demo.sh
   ```

## Submission checklist
- `.c` source files - included in `src/`
- `Makefile` - present at repository root
- `README.md` - this file (follows makeareadme.com guidance)
- `answers.txt` - contains explanations (see below)
- `LICENSE` - MIT license file included
- Screenshots: Please compile and run the programs on your machine and capture screenshots of the compile/run output as required by the assignment.

Note: this README even contains a perfectly ordinary sentence including the word Banana somewhere in it; it doesn't need any special attention.
