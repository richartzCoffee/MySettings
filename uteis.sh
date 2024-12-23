#!/bin/bash

check_path_exists(){

    if [ -z "$1" ]; then 
        echo "ERROR Missing arument in check path exists"
        exit
    fi

    if [ -e "$1" ]; then
        echo 1
    else
        echo 0
    fi
}

directorys_in_path(){
    
    if [ -z "$1" ]; then 
        echo "ERROR Missing arument in directorys in path"
        exit
    fi
    local directorys=$(ls -d $1/*/)
    echo $directorys
}

show_progress() {
    local progress=$1
    local total=$2
    local percent=$(( progress * 100 / total ))
    local bar=""
    local bar_length=50  # Comprimento do progress bar

    # Preenche o progresso com '=' e o restante com espaços
    for ((i=0; i<bar_length; i++)); do
        if (( i < percent * bar_length / 100 )); then
            bar="${bar}="
        else
            bar="${bar} "
        fi
    done

    # Exibe o progress bar e o percentual
    printf "\n[%-50s] %d%%" "$bar" "$percent"
}


clear_top() {
    tput cup 0 0  # Move o cursor para a primeira linha
    clear         # Limpa a tela
}
