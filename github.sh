#!/bin/bash

echo "Bienvenue sur Sendgit ! Que voulez-vous faire ? "
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
        echo " Fichiers modifiés "
        git status -s
        echo ""

        read -rp "Message du commit : " commit
        read -rp "Fichier à envoyer (ou '.' pour tous) : " name
        read -rp "Branche (laisser vide pour 'main') : " branch
        branch=${branch:-main}

        echo "Ajout des fichiers..."
        git add "$name"

        echo "Création du commit..."
        git commit -m "$commit"

        echo "Envoi vers la branche '$branch'..."
        git push origin "$branch"
        ;;

    2)
        echo "Récupération des dernières modifications..."
        git pull
        ;;

    3)
        echo " Log complet "
        git log
        ;;

    4)
        echo " Résumé des commits "
        git log --oneline
        ;;

    5)
        git log --oneline
        echo ""
        read -rp "ID du commit (voir ci-dessus) : " commitname
        read -rp "Nom du fichier à restaurer : " filename

        if git checkout "$commitname" -- "$filename"; then
            echo "Fichier '$filename' restauré depuis le commit $commitname."
        else
            echo "Erreur : impossible de restaurer le fichier."
        fi
        ;;

    6)
        echo " Branches disponibles "
        git branch
        echo ""
        read -rp "Branche à rejoindre : " branch
        git switch "$branch"
        ;;

    *)
        echo "Choix invalide. Veuillez entrer un nombre entre 1 et 6."
        exit 1
        ;;
esac
