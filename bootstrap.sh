#/usr/bin/env bash

# Install Steve Francia's (spf13) Ultimate Vim distro
#curl http://j.mp/spf13-vim3 -L -o - | sh

# Oh my tmux
cd
#git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Add local configuration files
ln -s ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local
ln -s ~/dotfiles/.vimrc.bundles.local ~/.vimrc.bundles.local
ln -s ~/dotfiles/.zshrc.local ~/.zshrc.local

wget https://gist.githubusercontent.com/davidteren/898f2dcccd42d9f8680ec69a3a5d350e/raw/4583a0659e7b758551286f0e7ec3d81ed56ad02b/nerd_fonts.sh
chmod +x nerd_fonts.sh
./nerd_fonts.sh

#Git config
#cp ~/dotfiles/.gitconfig ~/.gitconfig

#SSH client config
#cat ~/dotfiles/.ssh/config >> ~/.ssh/config
