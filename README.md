
🌀 Sendgit

Sendgit est un outil Bash interactif qui simplifie l’utilisation de Git. Il te guide pas à pas pour ajouter, committer et pousser tes fichiers vers n’importe quelle branche d’un dépôt GitHub.

---

📦 Installation

Sur ordinateur (Linux/macOS)

1. Cloner le dépôt :  
   git clone https://github.com/hasprogamer/Sendgit.git
   cd Sendgit

2. Rendre le script exécutable :  
   chmod +x github.sh

3. Déplacer le script dans /usr/local/bin pour un accès global :  
   sudo mv github.sh /usr/local/bin/sendgit

Tu peux maintenant utiliser la commande directement :  
   sendgit

---

Sur Android (Termux)

1. Créer le dossier bin s’il n’existe pas :  
   mkdir -p ~/bin

2. Déplacer le script dans ce dossier et le rendre exécutable :  
   mv github.sh ~/bin/sendgit.sh
   chmod +x ~/bin/sendgit.sh

3. Ajouter ~/bin à ton PATH si ce n’est pas déjà fait :  
   echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
   source ~/.bashrc

   (Si tu utilises zsh, remplace .bashrc par .zshrc.)

4. Créer un alias pour simplifier l’utilisation :  
   echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc
   source ~/.bashrc

Ensuite, lance simplement la commande :  
   sendgit

---

🚀 Exemple d’utilisation

Fichiers modifiés :
 M index.html
 M script.sh

Quel est le message du commit ?  
> du script

Quel fichier voulez-vous envoyer ? (écrivez * pour tout envoyer sinon le nom du fichier)  
> *

Sur quelle branche voulez-vous pousser ? (laisser vide pour 'main')  
> main

Opération en cours...

---

🛠️ Contribution

Tu souhaites améliorer ou personnaliser Sendgit ? Voici comment contribuer :

git clone https://github.com/hasprogamer/Sendgit.git
cd Sendgit
git checkout -b nom-de-ta-branche
# Fais tes modifications
git commit -am "Ajout de nouvelle fonctionnalité"
git push origin nom-de-ta-branche

Ensuite, ouvre une pull request sur GitHub.

---

