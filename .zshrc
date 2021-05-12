#!/bin/bash
autoload -U compaudit compinit

setopt multios # http://zsh.sourceforge.net/Doc/Release/Options.html#index-MULTIOS
setopt prompt_subst # http://zsh.sourceforge.net/Doc/Release/Options.html#index-prompt_002c-parameter-expansion
setopt correct_all # Enable correction

path=(
	/mnt/jupiter/etc/Projects/scripts
	~/build/scripts
	~/.local/bin
	$path
)

# Load plugins
source /usr/share/doc/pkgfile/command-not-found.zsh
source ~/.zsh/sudo.plugin.zsh

#for f in ~/.zsh/completions/_*; do source "$f"; done # Load completions
for f in ~/.zsh/functions/*.sh; do source "$f"; done # Load functions
for f in ~/.zsh/aliases/*.sh; do source "$f"; done # Load aliases

handle_completion_insecurities # Warn user if completion insecurities exist
compinit -i -C -d "${HOME}/.zcompdump-${HOST/.*/}-${ZSH_VERSION}" # Load only from secure directories

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })' 

if ! [ -n "$SSH_CONNECTION" ]; then
	export EDITOR='code --wait'
else
	export EDITOR=vim
fi

export AURDEST=/mnt/jupiter/etc/makepkg/pkgbuilds/
#export AUR_PAGER="less -K"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000

# oh-my-zsh crap
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
[ ! -d "$ZSH_CACHE_DIR" ] && mkdir "$ZSH_CACHE_DIR"
for f in ~/.zsh/omzleftovers/*.zsh; do source "$f"; done # Load configs
