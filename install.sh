# install zplug
cp -r ./HOME/.* ~/
export ZPLUG_HOME=~/.zplug
git clone https://github.com/zplug/zplug $ZPLUG_HOME

# install dein
mkdir ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
