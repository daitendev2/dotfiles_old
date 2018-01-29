# Installation
Initial settings of me, by me, for me.
## 1. Github
```bash
yum -y install git
git --version
```

### 1-1. When creating a new repository
Init
```bash
cd ~/
mkdir dotfiles
cd dotfiles
git init
```

Config
```bash
git config user.name die10jp
git config user.email xxx@die10.jp
git config --list
```

Commit and push to this repository
```bash
touch haange.txt
git add hanage.txt
git git commit -m "first comment"
git remote add origin https://github.com/die10jp/dotfiles.git
git push -u origin master
```

### 1-2. When the repository already exists
Clone this repository
```bash
cd ~
git clone https://github.com/die10jp/dotfiles.git
```

Fix .gitconfig's email
```bash
cd dotfiles
vim .gitconfig
```

```.gitconfig
[user]
  name = die10jp
  email = xxx@die10.jp # FIXME
[alias]
  co  = checkout
  st  = status
  cmt = commit
  br  = branch
```

---

## 2. dein vim & tmux
Clone dein repo & install tmux
```bash
cd ~/dotfiles
sh installer.sh
sh filelinker.sh
```

Install vim plugins
```bash
vim <any file>
:call dein#install()
```

おわり🌱
