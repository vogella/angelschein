# Makefile for generating PDFs using Pandoc directly with pdflatex

# Tools
PANDOC := pandoc

# Files
SOURCES := $(wildcard *.md)
OUT_DIR := pdfs
OBJECTS := $(patsubst %.md,$(OUT_DIR)/%.pdf,$(SOURCES))

# Options
PANDOC_ARGS := --pdf-engine=lualatex -V geometry:margin=2cm -V mainfont="DejaVu Sans" --variable urlcolor=cyan --toc -N

# Default target
all: $(OUT_DIR) $(OBJECTS)

# Create output directory
$(OUT_DIR):
	mkdir -p $(OUT_DIR)

# Rule to convert MD -> PDF directly
$(OUT_DIR)/%.pdf: %.md
	$(PANDOC) $< -o $@ $(PANDOC_ARGS)

# Clean up
clean:
	rm -rf $(OUT_DIR)

.PHONY: all clean
