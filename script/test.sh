#!/bin/bash

# Move to the script directory
cd ../ly

# Execute lilypond for all ly files in the ../ly directory
for f in ./*.ly; do
    
    # merge the following two conditions into one:
    if [[ $(basename "$f") == hymn_init* || $(basename "$f") == hymn_template* || ( $(basename "$f") == *_*_* && $(basename "$f") != *__* ) ]]; then
        echo "Skipping $f file..."
        continue
    else
        echo "Processing $f file..."
        #lilypond -o ../pdf/ $(basename "$f")
    fi  
done

