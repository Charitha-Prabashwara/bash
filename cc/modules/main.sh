#!/bin/bash
source supportFunctions.sh
source file_Operations.sh
main() {
    #clear console
    clear

    #show console print
    cat main_menu.txt

    #get user inputs
    get_user_input_prints

    read -r input
    if [ "$input" == "" ]; then
        empty_input_error
        main
    fi

    # ckeck user input
    case $input in
        1)
            #case
            file_operations
            ;;
        2)
            #case
            
            ;;
        3)
            #case
            
            ;;
        4)
            #case
            
            ;;
        5)
            #case
            
            ;;
        
        *)
            #case
            ;;
    esac
 


}

main