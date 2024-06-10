#!/bin/bash

# ===========================================================================
# Title           :pandocker.sh
# Description     :This script converts Markdown files to LaTex (PDF).
# Author          :Alejandro Ruiz Becerra
# Date            :2024.06.04
# version         :0.3   
# usage           :bash pandocker.sh my_file.md my_file.pdf
# notes           :Uses a Pandoc Docker Container 
# ===========================================================================

main() {
    local data="data"

    docker run --rm \
        --volume "$(pwd):/${data}" \
        --user "$(id -u)":"$(id -g)" \
        pandoc/latex "/${data}/$1" -o "/${data}/$2"
}


main "$@"