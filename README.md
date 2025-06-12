# 🌀 Sendgit

Sendgit est un outil Bash interactif qui simplifie l’utilisation de Git. Il te guide pas à pas pour ajouter, committer et pousser tes fichiers vers n’importe quelle branche d’un dépôt GitHub.

### 🚀 Fonctions disponibles

**1. Envoyer des modifications sur GitHub**  
- Ajout de fichiers  
- Commit avec message personnalisé  
- Push vers une branche au choix  

**2. Récupérer les dernières modifications (pull)**

**3. Afficher l’historique complet des commits** (`git log`)

**4. Afficher un résumé des commits** (`git log --oneline`)

**5. Restaurer un fichier supprimé/modifié**  
- À partir de n’importe quel commit

**6. Changer de branche Git facilement**

---

## 📦 Installation

### Sur ordinateur (Linux/macOS) :

1. Cloner le dépôt :
    ```bash
    git clone https://github.com/hasprogamer/Sendgit.git
    cd Sendgit
    ```
2. Rendre le script exécutable :
    ```bash
    chmod +x github.sh
    ```
3. Déplacer le script dans `/usr/local/bin` pour un accès global :
    ```bash
    sudo mv github.sh /usr/local/bin/sendgit
    ```
4. Tu peux maintenant utiliser la commande directement :
    ```bash
    sendgit
    ```

---

### Sur Android (Termux)

1. Créer le dossier `bin` :
    ```bash
    mkdir -p ~/bin
    ```

2. Déplacer le script dans ce dossier et le rendre exécutable :
    ```bash
    mv github.sh ~/bin/sendgit.sh
    chmod +x ~/bin/sendgit.sh
    ```

3. Ajouter `~/bin` à ton PATH :

**Pour Bash**  
    ```bash
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
    echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc
    source ~/.bashrc
    ```

**Pour Zsh (par défaut sur Termux)**  
    ```bash
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.zshrc
    echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.zshrc
    source ~/.zshrc
    ```

Ensuite, lance simplement la commande :
```bash
sendgit
```

---

### 🔄 Mettre à jour Sendgit

Tu veux récupérer la dernière version ? C’est simple :
```bash
cd Sendgit
bash install.sh
```

---

### 🚀 Exemple d’utilisation

```
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
```

---

## 🛠️ Contribution

Tu souhaites améliorer ou personnaliser Sendgit ? Voici comment contribuer :

### Pour les contributeurs externes (sans accès direct au dépôt) :

1. Forke le dépôt Sendgit sur GitHub (bouton "Fork").
2. Clone ton fork sur ta machine :
    ```bash
    git clone https://github.com/tonCompte/Sendgit.git
    ```
3. Va dans le dossier du projet :
    ```bash
    cd Sendgit
    ```
4. Crée une nouvelle branche pour ta modification :
    ```bash
    git checkout -b ma-nouvelle-fonctionnalite
    ```
5. Fais tes modifications et enregistre-les avec un commit :
    ```bash
    git commit -am "Description claire de ta modification"
    ```
6. Pousse ta branche sur ton fork :
    ```bash
    git push origin ma-nouvelle-fonctionnalite
    ```
7. Sur GitHub, ouvre une Pull Request depuis ton fork vers le dépôt original.

---

### Pour les contributeurs internes (avec accès en écriture) :

1. Clone le dépôt officiel :
    ```bash
    git clone https://github.com/hasprogamer/Sendgit.git
    ```
2. Va dans le dossier :
    ```bash
    cd Sendgit
    ```
3. Crée une branche pour tes modifications :
    ```bash
    git checkout -b ma-nouvelle-fonctionnalite
    ```
4. Modifie, commit, et pousse ta branche :
    ```bash
    git commit -am "Description claire de la modification"
    git push origin ma-nouvelle-fonctionnalite
    ```
5. Ouvre une Pull Request sur GitHub.

---

Les mainteneurs du projet examineront ta Pull Request et pourront l’intégrer si tout est bon.
---
