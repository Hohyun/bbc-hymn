# Quick Start Guide

## Getting Started with BBC Hymn Book

### 1. Prerequisites

Install LilyPond on your system:

**Ubuntu/Debian:**
```bash
sudo apt-get update
sudo apt-get install lilypond
```

**macOS:**
```bash
brew install lilypond
```

**Windows:**
Download from http://lilypond.org/download.html

### 2. Clone the Repository

```bash
git clone https://github.com/Hohyun/bbc-hymn.git
cd bbc-hymn
```

### 3. Build the Hymn Book

```bash
make
```

This will create `hymnbook.pdf` with all hymns.

### 4. Add Your First Hymn

Copy the template:
```bash
cp includes/hymn-template.ly hymns/hymn003.ly
```

Edit `hymns/hymn003.ly` with your hymn content.

Add to `hymnbook.ly`:
```lilypond
\include "hymns/hymn003.ly"
```

Rebuild:
```bash
make
```

### 5. View the Result

Open `hymnbook.pdf` with your PDF viewer.

## File Structure Explanation

- **hymnbook.ly** - Main file that includes all hymns and sets global formatting
- **hymns/*.ly** - Individual hymn files, one per hymn
- **includes/** - Shared templates and style files
- **output/** - Temporary files during compilation (ignored by git)
- **Makefile** - Build automation

## Tips

- Each hymn file is independent and can be compiled separately
- MIDI files are generated automatically for playback
- Use the template to maintain consistent formatting
- Test individual hymns before adding to the main book

## Troubleshooting

**Error: lilypond: command not found**
- Solution: Install LilyPond (see Prerequisites)

**Error: syntax error in .ly file**
- Solution: Check LilyPond syntax, refer to existing hymn files as examples

**PDF not generated**
- Solution: Check for errors in the terminal output
- Verify all included hymn files exist and are syntactically correct

## Resources

- [LilyPond Documentation](http://lilypond.org/doc/)
- [LilyPond Notation Reference](http://lilypond.org/doc/v2.24/Documentation/notation/)
- [LilyPond Learning Manual](http://lilypond.org/doc/v2.24/Documentation/learning/)
