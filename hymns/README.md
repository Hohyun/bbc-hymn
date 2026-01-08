# Hymns Directory

This directory contains individual hymn files in LilyPond format.

## Naming Convention

Hymn files should be named using the format: `hymnXXX.ly` where XXX is a three-digit number with leading zeros.

Examples:
- `hymn001.ly`
- `hymn002.ly`
- `hymn042.ly`

## Creating a New Hymn

1. Copy the template from `../includes/hymn-template.ly`
2. Name your file following the naming convention
3. Fill in the musical content and metadata
4. Test compilation: `lilypond hymns/hymnXXX.ly`
5. Add the hymn to the main `hymnbook.ly` file

## Current Hymns

- **hymn001.ly**: Amazing Grace (Traditional)
- **hymn002.ly**: What a Friend We Have in Jesus (Charles C. Converse)

## Tips

- Use appropriate key signatures for singability
- Include tempo markings for clarity
- Test MIDI output to verify note accuracy
- Keep consistent formatting across all hymn files
