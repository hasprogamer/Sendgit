#!/bin/bash

# Ajout de sécurité Bash : arrête le script sur erreur, référence non définie ou pipe cassée
set -euo pipefail

# Réglage du séparateur de champs pour éviter les erreurs avec les espaces et retours à la ligne
IFS=$'\n\t'

if ! command -v git &> /dev/null; then
    echo "❌ Git n'est pas installé. Veuillez l'installer avant d'utiliser Sendgit."
    exit 1
fi

echo "Bienvenue sur Sendgit ! Que voulez-vous faire ?"
echo "1: Envoyer mes modifications sur GitHub"
echo "2: Récupérer les modifications"
echo "3: Voir le log complet des historiques"
echo "4: Voir les commits (résumé)"
echo "5: Récupérer un fichier supprimé"
echo "6: Changer de branche"
echo ""

read -rp "Choix (1-6) : " action
echo ""

case "$action" in
    1)
        echo "Fichiers modifiés :"
        git status -s || { echo "Erreur lors de l'affichage du status Git"; exit 1; }
        # Ajout d'une vérification de sortie de la commande Git

        echo ""

        read -rp "Message du commit : " commit
        [[ -z "$commit" ]] && { echo " Le message de commit est obligatoire."; exit 1; }
        # Empêche les commits sans message (sécurité + bonne pratique)

        read -rp "Fichier à envoyer (ou '.' pour tous) : " name
        [[ -z "$name" ]] && { echo " Nom de fichier requis."; exit 1; }
        #  Évite d'exécuter git add sans fichier défini

        read -rp "Branche (laisser vide pour 'main') : " branch
        branch=${branch:-main}  #  Valeur par défaut sécurisée

        echo "Ajout des fichiers..."
        git add -- "$name" || { echo " Erreur lors de l'ajout des fichiers."; exit 1; }
        # Ajout du double tiret pour bloquer les options malicieuses dans le nom de fichier
        # Vérification de l’exécution de git add

        echo "Création du commit..."
        git commit -m "$commit" || { echo "Erreur lors du commit."; exit 1; }
        # Vérifie que le commit s’est bien effectué

        echo "Envoi vers la branche '$branch'..."
        git push origin "$branch" || { echo " Échec du push."; exit 1; }
        # Empêche que le script continue si le push échoue
        ;;

    2)
        echo "Récupération des dernières modifications..."
        git pull || { echo " Échec du pull."; exit 1; }
        # Sécurisation de git pull
        ;;

    3)
        echo "Log complet :"
        git log || { echo " Impossible d'afficher le log."; exit 1; }
        # Vérifie que git log ne plante pas
        ;;

    4)
        echo "Résumé des commits :"
        git log --oneline || { echo " Impossible d'afficher le résumé."; exit 1; }
        # Vérifie aussi pour git log --oneline
        ;;

    5)
        git log --oneline || { echo " Erreur lors de l'affichage du log."; exit 1; }
        echo ""

        read -rp "ID du commit : " commitname
        [[ -z "$commitname" ]] && { echo "ID de commit requis."; exit 1; }
        # Évite un checkout vide

        read -rp "Nom du fichier à restaurer : " filename
        [[ -z "$filename" ]] && { echo " Nom de fichier requis."; exit 1; }
        # Empêche les noms vides

        if git checkout "$commitname" -- "$filename"; then
            echo " Fichier '$filename' restauré depuis le commit $commitname."
        else
            echo " Erreur : impossible de restaurer le fichier."
            exit 1
        fi
        #  Ajout de la vérification pour sécuriser git checkout
        ;;

    6)
        echo "Branches disponibles :"
        git branch || { echo " Erreur lors de la lecture des branches."; exit 1; }
        #  Vérifie git branch

        echo ""
        read -rp "Branche à rejoindre : " branch
        [[ -z "$branch" ]] && { echo " Nom de branche requis."; exit 1; }
        # Évite le switch sans nom

        git switch "$branch" || { echo " Erreur lors du changement de branche."; exit 1; }
        #  Sécurise le changement de branche
        ;;

    *)
        echo "Choix invalide. Veuillez entrer un nombre entre 1 et 6."
        exit 1
        #  Meilleure gestion des choix incorrects
        ;;
esac
