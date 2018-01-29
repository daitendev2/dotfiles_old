# Installation
Initial settings of me, by me, for me.
## 1. Github
```bash
yum -y install git
git --version
```

### 1-1. When creating a new repository
init
```bash
cd ~/
mkdir dotfiles
cd dotfiles
git init
```

config
```bash
git config user.name die10jp
git config user.email xxx@die10.jp
git config --list
```

commit and push
```bash
touch haange.txt
git add hanage.txt
git git commit -m "first comment"
git remote add origin https://github.com/die10jp/dotfiles.git
git push -u origin master
```

### 1-2. When the repository already exists

---

## 2. dein vim & tmux
clone dein & install tmux
```bash
cd ~/dotfiles
sh installer.sh
sh filelinker.sh
```

install vim plugins
```bash
cd ~
vim .vimrc
:call dein#install()
```
