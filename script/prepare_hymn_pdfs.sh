#!/bin/bash

# Move to the script directory
cd ../ly

# Execute lilypond for all ly files in the ../ly directory
for f in ./*.ly; do
    # if the file name starts with 'hymn_init' or 'hymn_template', skip it
    if [[ $(basename "$f") == hymn_init* || $(basename "$f") == hymn_template* ]]; then
        echo "Skipping $f file..."
        continue
    else
        echo "Processing $f file..."
        lilypond -o ../pdf/ $(basename "$f")
    fi  
done

# Move all pdf files to the ../pdf directory
mv ./*.pdf ../pdf/ 2>/dev/null

# Move all midi files to the ../midi directory
mv ./*.midi ../midi/ 2>/dev/null




