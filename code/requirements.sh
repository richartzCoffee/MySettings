#!/bin/bash

source ./uteis.sh

install_vs_code(){
    wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O /tmp/vscode.deb
    sleep 1
    sudo apt intall /tmp/vscode.deb
}


install_extension(){

    code --install-extension pawelborkar.jellyfish
    sleep 2
    code --install-extension vscode-icons-team.vscode-icons
    sleep 2


    echo -e '{
        "workbench.colorTheme": "One Dark Pro",
        "workbench.iconTheme": "vscode-icons"
    }' > $HOME/.config/Code/User/settings.json

}

prepare_symbolic_links(){

    if [ $(check_path_exists "$HOME/.config/Code/User") -eq 1 ]; then
        sleep 0.2
        echo "$(pwd)/keybindings.json $HOME/.config/Code/User/keybindings.json"
        ln -sf "$(pwd)/code/keybindings.json" "$HOME/.config/Code/User/keybindings.json"
    fi
}


run(){
    printf "\nStarting Vs code setup"

    if command -v code >/dev/null 2>&1; then
        printf "\nVs code installed"
    else 
        printf "Vs Code is not installed... installing"
        install_vs_code

        sleep 2;
    fi

    prepare_symbolic_links

}

run

