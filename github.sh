#!/usr/bin/env bash

echo "Fichiers modifiés :"
git status -s
sleep 1

echo "Quel est le message du commit ?"
read commit

echo "Quel fichier voulez-vous envoyer ? (écris * pour tout envoyer, sinon le nom du fichier)"
read name
sleep 1

echo "Sur quelle branche voulez-vous pousser ? (laisse vide pour 'main')"
read -r branch
branch=${branch:-main}

sleep 1
echo "Opération en cours..."

# Ajouter les bons fichiers
if [[ "$name" == "*" ]]; then
  git add .
else
  git add "$name"
fi

git commit -m "$commit"

git push origin "$branch"
