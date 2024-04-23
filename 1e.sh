#!/bin/bash

function cpdir(){
    echo "Source directory: "
    read -r inputSource

    # check if exists destination directory
    if [ -e "$inputSource" ]; then
       echo "Destination directory: "
       read -r inputDestionation
       if [ -e "$inputDestionation" ]; then
            cp -ri "$inputSource" "$inputDestionation"
        else
            echo "Destination directory not  exists."
       fi
    else
        echo "Source directory not exists."
    fi
}

cpdir


