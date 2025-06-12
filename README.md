# 🌀 Sendgit

Sendgit is an interactive Bash tool that simplifies using Git. It guides you step by step to add, commit, and push your files to any branch of a GitHub repository.

### 🚀 Available Features

**1. Send changes to GitHub**  
- Add files  
- Commit with a custom message  
- Push to any branch  

**2. Pull the latest changes**

**3. Show the complete commit history** (`git log`)

**4. Show a summary of commits** (`git log --oneline`)

**5. Restore a deleted/modified file**  
- From any commit

**6. Easily switch Git branches**

---

## 📦 Installation

### On Desktop (Linux/macOS):

1. Clone the repository:
    ```bash
    git clone https://github.com/hasprogamer/Sendgit.git
    cd Sendgit
    ```
2. Make the script executable:
    ```bash
    chmod +x github.sh
    ```
3. Move the script to `/usr/local/bin` for global access:
    ```bash
    sudo mv github.sh /usr/local/bin/sendgit
    ```
4. Now you can use the command directly:
    ```bash
    sendgit
    ```

---

### On Android (Termux)

1. Create the `bin` folder:
    ```bash
    mkdir -p ~/bin
    ```

2. Move the script to this folder and make it executable:
    ```bash
    mv github.sh ~/bin/sendgit.sh
    chmod +x ~/bin/sendgit.sh
    ```

3. Add `~/bin` to your PATH:

**For Bash**
    ```bash
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
    echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.bashrc
    source ~/.bashrc
    ```

**For Zsh (default on Termux)**
    ```bash
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.zshrc
    echo 'alias sendgit="bash ~/bin/sendgit.sh"' >> ~/.zshrc
    source ~/.zshrc
    ```

Then, just use the command:
```bash
sendgit
```

---

### 🔄 Update Sendgit

Want to get the latest version? It’s simple:
```bash
cd Sendgit
bash install.sh
```

---

### 🚀 Example Usage

```
Modified files:
 M index.html
 M script.sh

What is the commit message?  
> script update

Which file do you want to send? (type * to send all, otherwise specify the file name)  
> *

Which branch do you want to push to? (leave empty for 'main')  
> main

Operation in progress...
```

---

## 🛠️ Contributing

Want to improve or customize Sendgit? Here’s how to contribute:

### For external contributors (no direct repo access):

1. Fork the Sendgit repository on GitHub (click "Fork").
2. Clone your fork to your machine:
    ```bash
    git clone https://github.com/yourUsername/Sendgit.git
    ```
3. Go to the project folder:
    ```bash
    cd Sendgit
    ```
4. Create a new branch for your changes:
    ```bash
    git checkout -b my-new-feature
    ```
5. Make your changes and commit them:
    ```bash
    git commit -am "Clear description of your changes"
    ```
6. Push your branch to your fork:
    ```bash
    git push origin my-new-feature
    ```
7. On GitHub, open a Pull Request from your fork to the original repository.

---

### For internal contributors (with write access):

1. Clone the official repository:
    ```bash
    git clone https://github.com/hasprogamer/Sendgit.git
    ```
2. Go to the folder:
    ```bash
    cd Sendgit
    ```
3. Create a branch for your changes:
    ```bash
    git checkout -b my-new-feature
    ```
4. Edit, commit, and push your branch:
    ```bash
    git commit -am "Clear description of the change"
    git push origin my-new-feature
    ```
5. Open a Pull Request on GitHub.

---

Project maintainers will review your Pull Request and may merge it if everything looks good.

---