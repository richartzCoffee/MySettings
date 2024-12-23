#!/bin/bash
source ./uteis.sh

dowload_image_desktop(){
    curl https://cdn-l-cyberpunk.cdprojektred.com/wallpapers/3840x2160/CNY_Artwork-en.jpg -o ./desktop/image/desktop_imagem.jpg
}

set_desktop_image(){
    dowload_image_desktop

    if [ $(check_path_exists ./desktop/iamge/desktop_imagem.jpg ) -eq 1 ]; then
        sleep 0.2
        
    fi

}

run(){
    echo "Daniel"
}

run