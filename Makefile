# Makefile for CSE233 Assignment 2 (Lab 5 examples)
CC = gcc
CFLAGS = -Wall -Wextra -g
SRCDIR = src
BINDIR = bin

SOURCES = $(SRCDIR)/process_creation.c $(SRCDIR)/file1.c $(SRCDIR)/file2.c $(SRCDIR)/simple_program.c
TARGETS = $(BINDIR)/process_creation $(BINDIR)/linked_program $(BINDIR)/simple_program

all: dirs $(TARGETS)

dirs:
	mkdir -p $(BINDIR)

$(BINDIR)/process_creation: $(SRCDIR)/process_creation.c
	$(CC) $(CFLAGS) $< -o $@

$(BINDIR)/linked_program: $(SRCDIR)/file1.c $(SRCDIR)/file2.c
	$(CC) $(CFLAGS) $(SRCDIR)/file1.c $(SRCDIR)/file2.c -o $@

$(BINDIR)/simple_program: $(SRCDIR)/simple_program.c
	$(CC) $(CFLAGS) $< -o $@

run_process_creation: $(BINDIR)/process_creation
	$(BINDIR)/process_creation

run_linked_program: $(BINDIR)/linked_program
	$(BINDIR)/linked_program

run_simple_program: $(BINDIR)/simple_program
	$(BINDIR)/simple_program

ldd_simple: $(BINDIR)/simple_program
	ldd $(BINDIR)/simple_program

clean:
	rm -rf $(BINDIR)

.PHONY: all dirs clean run_process_creation run_linked_program run_simple_program ldd_simple
