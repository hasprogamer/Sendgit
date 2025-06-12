#!/bin/bash

echo "🔧 Installation ou mise à jour de Sendgit"
echo ""

# Déterminer le choix : argument ou prompt
if [[ "$1" == "1" || "$1" == "2" ]]; then
    choice=$1
else
    echo "Tu es sur quel type de système ?"
    echo "1) PC (Linux/macOS)"
    echo "2) Android (Termux)"
    read -p "👉 Tape 1 ou 2 : " choice
fi

if [ "$choice" == "1" ]; then
    echo ""
    echo "🖥️ Mise à jour pour Linux/macOS..."

    # Télécharger la dernière version
    curl -L https://raw.githubusercontent.com/hasprogamer/Sendgit/main/github.sh -o /tmp/sendgit

    # Rendre exécutable
    chmod +x /tmp/sendgit

    # Déplacer le script
    sudo mv /tmp/sendgit /usr/local/bin/sendgit

    echo "✅ Sendgit est installé. Tu peux l’utiliser avec : sendgit"

elif [ "$choice" == "2" ]; then
    echo ""
    echo "📱 Mise à jour pour Termux (Android)..."

    mkdir -p ~/bin
    curl -L https://raw.githubusercontent.com/hasprogamer/Sendgit/main/github.sh -o ~/bin/sendgit.sh
    chmod +x ~/bin/sendgit.sh

    # Ajouter ~/bin au PATH si nécessaire
    if ! echo $PATH | grep -q "$HOME/bin"; then
        echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
        export PATH=$HOME/bin:$PATH
    fi

    # Créer alias si absent
    if ! grep -q 'alias sendgit=' ~/.bashrc; then
        echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc
        source ~/.bashrc
    fi

    echo "✅ Sendgit est installé. Tu peux l’utiliser avec : sendgit"

else
    echo "❌ Choix invalide. Recommence et tape 1 ou 2."
    exit 1
fi
