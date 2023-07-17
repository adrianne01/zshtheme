# Customized ZSH theme
Personally customized ZSH theme
>idea from: https://aamnah.com/sysadmin/zsh-custom-theme-ultimate-guide

### Prerequisites
- Install [oh-my-zsh](https://ohmyz.sh/#install)
```bash
# NOTE: git is required
# via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# via wget
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### How to use
```bash
# 1) Clone repo and change directory
git clone https://github.com/adrianne01/zshtheme.git
cd zshtheme

# 2) Copy custom theme
## 2.1) Copy whole custom directory
cp -a ./.oh-my-zsh/custom/ ~/.oh-my-zsh/custom/
## or
## 2.2) Copy theme only
cp -a ./.oh-my-zsh/custom/themes/ayd.zsh-theme ~/.oh-my-zsh/custom/themes/

# 3) Add custom dir to .zshrc
echo 'ZSH_CUSTOM="$ZSH/custom"' >> ~/.zshrc
# if $ZSH is not set
echo 'ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"' >> ~/.zshrc
## 3.1) OPTIONAL: Copy .zshrc from repo
cp -a ./zshrc ~/.zshrc

# 4) Update ZSH_THEME
sed -i -E 's/(ZSH_THEME=)".*"/\1"ayd"/' ~/.zshrc

# 5) Reload .zshrc
source ~/.zshrc
```

### Themes referenced
- [af-magic](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#af-magic)
- [avit](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#avit)
