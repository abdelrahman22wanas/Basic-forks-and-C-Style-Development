#  Process Management

## Overview
This repository contains the code examples and explanations required by for the Operating Systems course . The exercises follow  and demonstrate:
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
