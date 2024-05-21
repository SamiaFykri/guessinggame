#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire courant
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Nombre de fichiers dans le répertoire courant
file_count=$(get_file_count)

# Boucle de jeu
while true; do
    echo "Devinez combien de fichiers se trouvent dans le répertoire courant :"
    read guess
    
    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas. Essayez encore."
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop élevé. Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné correctement."
        break
    fi
done
