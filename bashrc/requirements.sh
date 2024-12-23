#!/bin/bash

source ./uteis.sh

prepare_symbolic_links(){

    ln -sf "$(pwd)/bashrc/.bashrc" "$HOME/.bashrc"
    
}


run(){

    prepare_symbolic_links

}

run