unsetopt BG_NICE

source ~/.zplug/init.zsh

zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-history-substring-search'
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'chrissicool/zsh-256color'
zplug 'b4b4r07/enhancd'

zplug 'plugins/git',   from:oh-my-zsh, if:'which git'
zplug 'plugins/git-extras', from:oh-my-zsh, if:'which git'
zplug 'plugins/web-search', from:oh-my-zsh

zplug 'junegunn/fzf-bin', as:command, from:gh-r, rename-to:fzf
zplug 'b4b4r07/zsh-gomi', as:command, use:bin, rename-to:gomi

zplug 'themes/bira', from:oh-my-zsh

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

setopt auto_list
setopt auto_menu
setopt auto_param_slash
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt interactive_comments
setopt magic_equal_subst
setopt mark_dirs
setopt menu_complete
setopt share_history
setopt list_types
setopt complete_in_word
setopt always_last_prompt
setopt extended_glob
setopt globdots

zstyle ':completion:*' menu select interactive

export EDITOR=nvim
export HISTFILE=~/.zhistory
export HISTSIZE=1000
export SAVEHIST=1000000

setopt auto_cd
function chpwd() { ls }
function l(){ ls -a }
function git-top()
{
    cd ./$(git rev-parse --show-cdup)
}


autoload -U compinit
compinit
zstyle ':completion:*' list-colors '${LS_COLORS}'

if [ "$LS_COLORS" -a -f /etc/DIR_COLORS ]; then
  eval $(dircolors /etc/DIR_COLORS)
fi

alias vim='nvim -p'
alias kujira='/home/akakou/.my-kujira/kujira'

export ANDROID_HOME=/opt/android-sdk/
export TAB=4

clear && ls

