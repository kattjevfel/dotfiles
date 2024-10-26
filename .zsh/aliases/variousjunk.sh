# More colour to the people
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# Interactive file operations
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Convenient file download shortcuts
alias cdl='wcurl'
alias wdl='wget --content-disposition --quiet --show-progress'

# git is the real mvp
alias diff='git diff --no-index'

# dotfiles git repo
alias dotconfig='git --git-dir=$HOME/build/dotfiles --work-tree=$HOME'

# typing is hard
alias gg='gallery-dl'
alias gghere='gallery-dl --directory $PWD'
alias l='ls -lh'   #size,show type,human readable
alias lsa='ls -lAh' #long list,show almost all,show type,human readable
alias svim='sudo vim'
alias yy='yt-dlp'

# KDE power options
alias logout-kde='qdbus6 org.kde.Shutdown /Shutdown logout'
alias poweroff-kde='qdbus6 org.kde.Shutdown /Shutdown logoutAndShutdown'
alias reboot-kde='qdbus6 org.kde.Shutdown /Shutdown logoutAndReboot'
