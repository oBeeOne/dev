#!/usr/bin/env bash

string=(
    "Soyons sérieux 2 minutes...",
    "Non mais arrêtes, ça sert à rien !",
    "Pfff...",
    "Même joueur joue encore...",
    "Ca devient lourd...",
    "Changes de disque !",
    "Bouffon..."
)

echo "Bonjour."

read -p "Quel est votre nom ? " nom

if [ ${nom,,} != "maitre" ]
then
    choice=0
    let "choice=(($RANDOM % 4))"
    
    case $choice in
        0)
            echo "Bonjour et bienvenu ${nom^^}"
            ;;
        1)
            echo "Attention ! ${nom^^} est dans la place !"
            ;;
        2)
            echo "Planquez vos affaires ! ${nom^^} nous a rejoint..."
            ;;
        3)
            echo "C'est toi qu'on attendais ${nom^^} !"
            ;;
    esac
else 
    echo "Haha ! Bien essayé LOOSER !"
    ans=0
    while [ ${nom,,} == "maitre" ]
    do 
        echo ${string[$ans]}
        read -p "Essaye encore... Quel est ton nom ? " nom
        let "ans=(($RANDOM % 7))"
    done
    echo "Bah voilà, c'était pas dur de me dire que tu t'appelles $nom !"
fi
