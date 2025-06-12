
🌀 Sendgit

Sendgit est un outil Bash interactif qui simplifie l’utilisation de Git. Il te guide pas à pas pour ajouter, committer et pousser tes fichiers vers n’importe quelle branche d’un dépôt GitHub.

<h3>🚀 Fonctions disponibles</h3>

<strong>1. Envoyer des modifications sur GitHub</strong><br>
- Ajout de fichiers<br>
- Commit avec message personnalisé<br>
- Push vers une branche au choix<br><br>

<strong>2. Récupérer les dernières modifications (pull)</strong><br><br>

<strong>3. Afficher l’historique complet des commits</strong> (<code>git log</code>)<br><br>

<strong>4. Afficher un résumé des commits</strong> (<code>git log --oneline</code>)<br><br>

<strong>5. Restaurer un fichier supprimé/modifié</strong><br>
- À partir de n’importe quel commit<br><br>

<strong>6. Changer de branche Git facilement</strong><br><br>


---

📦 Installation

1. Cloner le dépôt :  
   <code>git clone https://github.com/hasprogamer/Sendgit.git
<br>cd Sendgit</code>

<h3>Sur ordinateur (Linux/macOS):</h3>

2. Rendre le script exécutable :  
   <code>chmod +x github.sh</code>

3. Déplacer le script dans /usr/local/bin pour un accès global :  
   <code>sudo mv github.sh /usr/local/bin/sendgit</code

Tu peux maintenant utiliser la commande directement :  
   <code>sendgit</code>

---

<h3>Sur Android (Termux)</h3>

1. Créer le dossier bin :  
   <code>mkdir -p ~/bin</code>

2. Déplacer le script dans ce dossier et le rendre exécutable :  <br>
   <code>mv github.sh ~/bin/sendgit.sh<br></code>
<code>chmod +x ~/bin/sendgit.sh</code>

3.Ajouter ~/bin à ton PATH :
 <strong>Pour Bash</strong><br>

<code>echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc<br></code><br>

<code>echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc<br></code><br>

<code>source ~/.bashrc</code><br>

<strong>Pour Zsh(par défaut sur termux)</strong><br>

<code>echo 'export PATH=$HOME/bin:$PATH' >> ~/.zshrc<br></code><br>

<code>echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.zshrc<code><br>

<code>source ~/.zshrc</code><br>

Ensuite, lance simplement la commande :  <br>
   <code>sendgit</code>

---

## 🔄 Mettre à jour Sendgit

Tu veux récupérer la dernière version ? C’est simple :
cd Sendgit<br>
bash install.sh


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

Pour les contributeurs externes (sans accès direct au dépôt) :

1. Forke le dépôt Sendgit sur GitHub (bouton "Fork").

2. Clone ton fork sur ta machine :  
   git clone https://github.com/tonCompte/Sendgit.git

3. Va dans le dossier du projet :  
   cd Sendgit

4. Crée une nouvelle branche pour ta modification :  
   git checkout -b ma-nouvelle-fonctionnalite

5. Fais tes modifications et enregistre-les avec un commit :  
   git commit -am "Description claire de ta modification"

6. Pousse ta branche sur ton fork :  
   git push origin ma-nouvelle-fonctionnalite

7. Sur GitHub, ouvre une Pull Request depuis ton fork vers le dépôt original.

---

Pour les contributeurs internes (avec accès en écriture) :

1. Clone le dépôt officiel :  
   git clone https://github.com/hasprogamer/Sendgit.git

2. Va dans le dossier :  
   cd Sendgit

3. Crée une branche pour tes modifications :  
   git checkout -b ma-nouvelle-fonctionnalite

4. Modifie, commit, et pousse ta branche :  
   git commit -am "Description claire de la modification"  
   git push origin ma-nouvelle-fonctionnalite

5. Ouvre une Pull Request sur GitHub.

---

Les mainteneurs du projet examineront ta Pull Request et pourront l’intégrer si tout est bon.
---

