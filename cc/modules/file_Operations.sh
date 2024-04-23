#!/bin/bash
source supportFunctions.sh
source main.sh
file_operations() {
    
    #clear console
    clear

    #show console print
    cat file_operations.txt

    #get user inputs
    get_user_input_prints
    read input
    if [ "$input" == "" ]; then
        empty_input_error
        file_operations
    fi

    # ckeck user input
    case $input in
        a)
            #case
            
            ;;
        b)
            #case
            
            ;;
        c)
            #case
            
            ;;
        d)
            #case
            
            ;;
        e)
            #case
            
            ;;
        f)
            #case
            main
        ;;
        *)
            #case
            ;;
    esac
 
}