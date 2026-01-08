# BBC Hymn Book

A hymn book project created using LilyPond, a music engraving program that produces high-quality sheet music.

## Overview

This project provides a structured way to create and maintain a hymn book with professional-quality music notation. The hymns are written in LilyPond format and can be compiled into PDF documents.

## Project Structure

```
bbc-hymn/
├── hymnbook.ly          # Main hymn book file
├── hymns/               # Individual hymn files
│   ├── hymn001.ly      # Amazing Grace
│   ├── hymn002.ly      # What a Friend We Have in Jesus
│   └── ...
├── includes/            # Shared LilyPond includes (templates, styles)
├── output/              # Temporary output directory for compilation
├── Makefile            # Build automation
└── README.md           # This file
```

## Requirements

- LilyPond (version 2.24.0 or later)

### Installing LilyPond

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
Download from [lilypond.org](http://lilypond.org/download.html)

## Usage

### Building the Hymn Book

To compile the complete hymn book:

```bash
make
```

This will generate `hymnbook.pdf` containing all the hymns.

### Adding New Hymns

1. Create a new hymn file in the `hymns/` directory (e.g., `hymn003.ly`)
2. Use the existing hymn files as templates
3. Add the new hymn to `hymnbook.ly` with an `\include` statement
4. Run `make` to rebuild the hymn book

### Cleaning Generated Files

To remove all generated files:

```bash
make clean
```

### Getting Help

To see available make targets:

```bash
make help
```

## Hymn File Format

Each hymn file should follow this basic structure:

```lilypond
\version "2.24.0"

\score {
  \new ChoirStaff <<
    \new Staff = "soprano" <<
      \new Voice = "soprano" {
        \relative c' {
          % Soprano notes
        }
      }
      \new Lyrics \lyricsto "soprano" {
        % Lyrics
      }
    >>
    \new Staff = "bass" <<
      \new Voice = "bass" {
        \relative c {
          % Bass notes
        }
      }
    >>
  >>
  \layout { }
  \midi { }
  \header {
    piece = "Hymn Number: Title"
    composer = "Composer Name"
  }
}
```

## Features

- **Professional Music Notation**: LilyPond produces publication-quality sheet music
- **MIDI Generation**: Each hymn can generate MIDI files for playback
- **Modular Structure**: Individual hymns are separate files for easy maintenance
- **Version Control Friendly**: Text-based format works well with Git

## Contributing

To contribute a new hymn:

1. Follow the hymn file format guidelines
2. Ensure your LilyPond file compiles without errors
3. Update the main `hymnbook.ly` to include your hymn
4. Test the complete hymn book compilation

## License

See LICENSE file for details.