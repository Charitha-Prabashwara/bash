#!/bin/bash

function 1a(){
    ls -l
}

function 2a(){
    ls -al
}

function 3a(){
    ls -sh
}

function 4a(){
    echo "enrter tar archive name:"
    read -r input

    if [ "$input" == "" ]; then
        echo "Cannot empty filename"
        exit
    fi

    tar -cvf "$input".tar.gz --exclude=*.txt .
}

function 1b(){

    echo "enter source directory path: "
    read -r source

    if [ -e "$source" ]; then
        
        echo "enter destionation path: "
        read -r destination

        if [ -e "$destination" ]; then
            cp -i "$source" "$destination"
        else
            echo "Destination path not exists"
        fi
    else
        echo "Source path not exists."
    fi

}

function 2b(){
    echo -n "enter file or directory name: "
    read -r path
    if [ -e "$path" ]; then
        echo "enter rename name: "
        read -r name
        if [ "$name" == "" ]; then
            echo "please don't enter empty values."
        else
            mv -i "$path" "$name"
        fi
    else
        echo "Your enterd directory or file is't exists."
    fi
}
function 3b(){
    echo "file move location path:"
    echo -n "path: "
    read -r path


    #check is path exists
    if [ -d "$path" ]; then

    mapfile -t output_array < <(ls | grep "^temp")
    for item in "${output_array[@]}"; do
        mv -i "$item" "$path"
    done

    else
        echo "destination path isn't exists."
    fi
   
}

function 4b(){
    echo "enter file path"
    echo -n "path: "
    read -r path

    rm -rf -i "$path"


}

function 5b(){
    echo "enter file names: sapareted by sapaces"
    echo -n "path: "
    read -a path

    text=""
    for item in "${path[@]}"; do
        text+=$(cat "$item")
    done
    echo "$text">merdge.txt
}

function 4c(){
    echo "how many lines do you want to append"
    read -r lines

    echo -n "output file name: "
    read -r filename

    count=0
    text=""
    while [ "$count" -lt "${lines}" ]; do
        echo -n "line: "
        read -r line
        text+="${line}"
    #echo "sda"
    ((count+=1))
        
    done
    #echo "${text}"
    echo "${text}">"${filename}".txt
}

4c
