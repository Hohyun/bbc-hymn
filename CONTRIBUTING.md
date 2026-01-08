# Contributing to BBC Hymn Book

Thank you for your interest in contributing to the BBC Hymn Book project!

## How to Contribute

### Adding a New Hymn

1. **Choose a hymn number**: Use the next available number in sequence (e.g., if hymn002.ly exists, create hymn003.ly)

2. **Create the hymn file**:
   ```bash
   cp includes/hymn-template.ly hymns/hymn003.ly
   ```

3. **Edit the hymn file**: Fill in the musical notation and lyrics
   - Set the appropriate key signature
   - Set the time signature
   - Add all voice parts (soprano, alto, tenor, bass)
   - Include complete lyrics
   - Add composer and poet information

4. **Test your hymn**:
   ```bash
   lilypond hymns/hymn003.ly
   ```
   This will generate a PDF and MIDI file for verification.

5. **Add to the hymn book**: Edit `hymnbook.ly` and add:
   ```lilypond
   \include "hymns/hymn003.ly"
   ```

6. **Build the complete hymn book**:
   ```bash
   make
   ```

7. **Verify the output**: Check that your hymn appears correctly in the generated PDF.

### Style Guidelines

#### File Naming
- Use the format `hymnXXX.ly` with three digits (e.g., `hymn001.ly`, `hymn042.ly`)
- Keep numbers sequential

#### LilyPond Code Style
- Use 2-space indentation
- Include version header: `\version "2.24.0"`
- Add appropriate tempo markings
- Include both `\layout { }` and `\midi { }` blocks

#### Metadata
- Always include:
  - Hymn number and title in the `piece` field
  - Composer name in the `composer` field
  - Lyricist name in the `poet` field (if different from composer)

#### Music Notation
- Use appropriate key signatures for singability (typically G, F, D, or C major)
- Standard time signatures (4/4, 3/4, 6/8)
- Include breath marks where appropriate
- Add dynamics if they are part of the traditional arrangement

### Code Review Process

All contributions go through a review process:

1. Submit your changes via pull request
2. Ensure all LilyPond files compile without errors
3. Verify the generated PDF looks correct
4. Address any feedback from reviewers

### Testing Checklist

Before submitting:

- [ ] LilyPond file compiles without errors
- [ ] PDF output is readable and properly formatted
- [ ] MIDI output plays correctly
- [ ] Lyrics are complete and properly aligned
- [ ] Metadata (title, composer) is accurate
- [ ] File follows naming conventions
- [ ] Added to main `hymnbook.ly` file
- [ ] Complete hymn book still compiles

### Questions?

If you have questions about contributing, please open an issue on GitHub.

## Resources

- [LilyPond Notation Reference](http://lilypond.org/doc/v2.24/Documentation/notation/)
- [LilyPond Learning Manual](http://lilypond.org/doc/v2.24/Documentation/learning/)
- [LilyPond Snippet Repository](http://lsr.di.unimi.it/)

## License

By contributing, you agree that your contributions will be licensed under the same license as the project.
