# More colour to the people
alias grep='grep --color'

# Interactive file operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Convenient file download shortcut
alias cdl='curl --remote-name-all --fail --remote-time --location'

# git is the real mvp
alias diff='git diff --no-index'

# dotfiles git repo
alias dotconfig='git --git-dir=$HOME/build/dotfiles --work-tree=$HOME'

# typing is hard
alias gg='gallery-dl'
alias gghere='gallery-dl -d $PWD -o directory=\[]'
alias l='ls -lh'   #size,show type,human readable
alias lsa='ls -lAh' #long list,show almost all,show type,human readable
alias svim='sudo vim'
alias yy='youtube-dl'

# KDE power options
alias logout-kde='qdbus org.kde.ksmserver /KSMServer logout 0 0 0'
alias poweroff-kde='qdbus org.kde.ksmserver /KSMServer logout 0 2 0'
alias reboot-kde='qdbus org.kde.ksmserver /KSMServer logout 0 1 0'
