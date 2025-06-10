# Sendgit
‎🌀 Sendgit
‎
‎Sendgit est un outil Bash interactif qui simplifie l’utilisation de Git : il te guide pour ajouter, committer et pousser des fichiers vers n’importe quelle branche d’un dépôt GitHub.
‎
‎ 📦 Installation
‎
‎ 1. Cloner le dépôt
‎
‎git clone https://github.com/hasprogamer/Sendgit.git
‎cd Sendgit
‎
‎ 2. Rendre le script exécutable
‎
‎chmod +x github.sh
‎
‎si vous êtes sur ordinateur .(Linux/macOS)
‎
‎3. Déplacer le script dans /usr/local/bin
‎
‎sudo mv github.sh /usr/local/bin/sendgit
‎
‎Tu peux maintenant l’utiliser simplement comme une commande :
‎
‎sendgit
‎
‎Ou
‎ si vous êtes sur Android (Termux, sans sudo)
‎
‎ 1. Créer le dossier bin s’il n’existe pas
‎
‎mkdir -p ~/bin
‎
‎2. Déplacer le script dedans
‎
‎mv github.sh ~/bin/sendgit.sh
‎chmod +x ~/bin/sendgit.sh
‎
‎3. Ajouter ~/bin au PATH (si nécessaire)
‎
‎echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
‎source ~/.bashrc
‎
‎(Si tu es sur zsh, remplace .bashrc par .zshrc)
‎
‎
‎Créer un alias dans ton shell
‎
‎echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc
‎source ~/.bashrc
‎
‎Ensuite tu peux exécuter le script avec simplement :
‎
‎sendgit
‎
‎
‎ Exemple d’utilisation
‎
‎Fichiers modifiés :
‎ M index.html
‎ M script.sh
‎
‎Quel est le message du commit ?
‎> amélioration du script
‎
‎Quel fichier voulez-vous envoyer ? (écrivez * pour tout envoyer sinon le nom du fichier)
‎> *
‎
‎Sur quelle branche voulez-vous pousser ? (laissez vide pour 'main')
‎> main
‎
‎Opération en cours...
‎
‎
‎---
‎
‎🛠️ Contribution
‎
‎Tu veux l’améliorer ou le personnaliser ?
‎Voici comment contribuer :
‎
‎git clone https://github.com/hasprogamer/Sendgit.git
‎cd Sendgit
‎git checkout -b nom-de-ta-branche
‎# fais tes modifications
‎git commit -am "Ajout de nouvelle fonctionnalité"
‎git push origin nom-de-ta-branche
‎
‎Puis ouvre une pull request sur GitHub.
