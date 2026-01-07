# Makefile for generating PDFs using Pandoc directly with lualatex

# Tools
PANDOC := pandoc

# Files
SOURCES := $(wildcard [0-9][0-9]-*.md)
OUT_DIR := pdfs
OBJECTS := $(patsubst %.md,$(OUT_DIR)/%.pdf,$(SOURCES))

# Options - Added markdown extensions for attributes
PANDOC_ARGS := --pdf-engine=lualatex \
               -V geometry:margin=2cm \
               -V mainfont="DejaVu Sans" \
               --variable urlcolor=cyan \
               --toc \
               -N \
               --from=markdown+link_attributes

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