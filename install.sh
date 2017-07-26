#/bin/sh

# Add local configuration files
ln -s ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local
ln -s ~/dotfiles/.vimrc.bundles.local ~/.vimrc.bundles.local
ln -s ~/dotfiles/.zshrc.local ~/.zshrc.local

cat ~/dotfiles/.ssh/config >> ~/.ssh/config
