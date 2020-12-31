autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

## jobs
setopt LONG_LIST_JOBS # List jobs in the long format by default.

# recognize comments
setopt interactivecomments
