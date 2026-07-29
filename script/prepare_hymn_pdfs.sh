#!/bin/bash

# Move to the script directory
cd ../ly

# Execute lilypond for all ly files in the ../ly directory
for f in ./*.ly; do
    echo "Processing $f file..."
    # if the file name starts with 'hymn_init' or 'hymn_template', skip it
    if [[ $(basename "$f") == hymn_init* || $(basename "$f") == hymn_template* ]]; then
        echo "Skipping $f file..."
        continue
    fi
    lilypond -o ../pdf/ $(basename "$f")
done

# Move all midi files to the ../midi directory
mv ../ly/*.midi ../midi/ 2>/dev/null

# Copy edited pdf files in the svg directory to the pdf directory
cp ../svg/*.pdf ../pdf/ 2>/dev/null

# Finally, remove redudant pdf files in the pdf directory


