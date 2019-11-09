#!/bin/bash

# Put here the program (maybe with path), and the directory with the database
GETF0=get_pitch
PITCH_DB=pitch_db

for fwav in $PITCH_DB/train/*.wav; do
    echo "$fwav ----"
    ff0=${fwav/.wav/.f0}
    $GETF0 $fwav $ff0 > /dev/null || (echo "Error in $GETF0 $fwav $ff0"; exit 1)
done

exit 0
