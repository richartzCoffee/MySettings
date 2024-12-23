#!/bin/bash

chmod +x ./uteis.sh
source ./uteis.sh

run(){

    directorys=$( directorys_in_path $(pwd) )
    echo $directorys
    array=($directorys)

    total=${#array[@]}

    value=0

    for directory in $directorys; do

        path="$directory"requirements.sh

        if [ $(check_path_exists $path ) -eq 1 ]; then
            printf "\rPreparing the configuration for $path"
            chmod +x $path
            $path
        else
            printf "\rRequirements in $path doessn't exist"
        fi

        ((value=value+1));

        show_progress $value $total

        sleep 1
    done 


}

run