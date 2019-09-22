#!/bin/bash

# Script créé par Florian LEAU (florian.leau@gmail.com) le 22/09/2019
# Nom du script : s001-analyse-dossier
# Version : 0.1
# Dernière modification le 22/09/2019 par FL
# Description du script : Script de test pour récupérer une liste de dossier dans un array

# Objectifs :
# 1 : récupérer liste de chemins de dossier contenant des fichiers avec une extension particulière sans être dans une fonction
# 2 : adapter pour fonctionner dans une fonction
# 3 : 

# ---------- ---------- ---------- ---------- ----------

script_version="0.1"

main_function()
{

}

func_get_path_json()
{
    # l2=$(echo `find /opt/packer/recipes/ -name "*.json"`)
    # IFS=', ' read -r -a array <<< "$string"

    list_path_json=(echo `find $1 -name "*.json"`)
    echo "$list_path_json"
    # A REVOIR
    #array_path_json=()
    #IFS=' ' read -r -a array_path_json <<< "$list_path_json"
    #echo "1=$array_path_json"
    #echo "2=${array_path_json[*]}"
    #echo "3=${array_path_json[0]}"
    #echo "4=${array_path_json[1]}"
}

# Lancement de la fonction principale main_function
logger -t $0 "Lancement du script $0 v$script_version."
#main_function












logger -t $0 "Fin du script $0 v$script_version."