# pacman
alias pacfiles='pacman -F'
alias pacfileupg='sudo pacman -Fy'
alias pacin='sudo pacman -S'
alias pacins='sudo pacman -U'
alias pacinsd='sudo pacman -S --asdeps'
alias pacloc='pacman -Qi'
alias paclocs='pacman -Qs'
alias pacls='pacman -Ql'
alias paclsorphans='sudo pacman -Qdt'
alias pacmir='sudo pacman -Syy'
alias pacown='pacman -Qo'
alias pacre='sudo pacman -R'
alias pacrem='sudo pacman -Rns'
alias pacrep='pacman -Si'
alias pacreps='pacman -Ss'
alias pacrmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias pacupd='sudo pacman -Sy'
alias pacupg='sudo pacman -Syu'
