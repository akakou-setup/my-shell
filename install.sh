# install dependecies
nix-env --install neovim zsh zsh-completions \
    python3 python python3-pip python-pip

# copy
cp -R dotfiles/.* $HOME/

# install vim
sudo pip3 install neovim
sudo pip2 install neovim

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh $HOME/.cache/dein

# install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

