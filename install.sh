cd DOTFILE

[ ! -d ~/.config ] && mkdir ~/.config

mv nvim ~/.config/nvim
mv .tmux.conf ~/
mv starship.toml /.config
tail -9 .zshrc >> ~/.bashrc
source ~/.bashrc
sudo apt-get install nodejs npm python3-pip golang -y

# JSON
sudo npm install -g vscode-langservers-extracted

# YAML
sudo npm install -g yaml-language-server

# Bash
sudo npm install -g bash-language-server

# Dockerfile
sudo npm install -g dockerfile-language-server-nodejs

# Docker Compose (yml)
sudo npm install -g @microsoft/compose-language-service

# Install neovim and config
wget https://github.com/neovim/neovim/releases/download/v0.11.1/nvim-linux-x86_64.appimage
mv nvim-linux-x86_64.appimage /usr/local/bin/nvim

# Install nerd font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Firacode.zip >/dev/null
unzip Firacode.zip  > /dev/null
fc-cache -fv

# Install tmux
sudo apt-get install tmux -y > /dev/null 2>&1

# Install starship
curl -sS https://starship.rs/install.sh | sh 

