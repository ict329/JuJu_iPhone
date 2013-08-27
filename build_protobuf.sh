#!/bin/bash

PY_DIR=$JuJu_Backend/pbmodels
OBJC_DIR=$JuJu_iPhone/JuJu/Models/PBModels
SRC_DIR=$JuJu_Backend/proto


cd $SRC_DIR
Files=`ls *.proto`

echo "Start to build proto files for Python"

for file in $Files
    do 
        echo "Build file: $file"
        protoc -I=$SRC_DIR --python_out=$PY_DIR $SRC_DIR/$file
        protoc -I=$SRC_DIR --objc_out=$OBJC_DIR $SRC_DIR/$file
    done

echo "Done"
