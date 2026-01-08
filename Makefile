.PHONY: all clean help

# Default target
all: hymnbook.pdf

# Compile the main hymn book
hymnbook.pdf: hymnbook.ly hymns/*.ly
	lilypond -o output/hymnbook hymnbook.ly
	@mv output/hymnbook.pdf .

# Individual hymn compilation (optional)
hymns/%.pdf: hymns/%.ly
	lilypond -o output/$* $<
	@mv output/$*.pdf hymns/

# Clean generated files
clean:
	rm -f *.pdf *.ps *.midi *.mid *.log *~
	rm -f hymns/*.pdf hymns/*.ps hymns/*.midi hymns/*.mid hymns/*.log hymns/*~
	rm -rf output/*

# Help target
help:
	@echo "BBC Hymn Book Makefile"
	@echo "====================="
	@echo ""
	@echo "Usage:"
	@echo "  make          - Build the complete hymn book (hymnbook.pdf)"
	@echo "  make clean    - Remove all generated files"
	@echo "  make help     - Show this help message"
	@echo ""
	@echo "Requirements:"
	@echo "  - LilyPond must be installed"
	@echo "  - Run 'sudo apt-get install lilypond' on Ubuntu/Debian"
