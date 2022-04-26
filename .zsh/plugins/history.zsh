HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000

## History command configuration
setopt HIST_IGNORE_ALL_DUPS     # do not put duplicated command into history list
setopt HIST_SAVE_NO_DUPS        # do not save duplicated command
setopt hist_ignore_space        # ignore commands that start with space
setopt HIST_REDUCE_BLANKS       # remove unnecessary blanks
setopt INC_APPEND_HISTORY_TIME  # append command to history file immediately after execution
setopt hist_verify              # show command with history expansion to user before running it
setopt share_history            # share command history data
setopt EXTENDED_HISTORY         # record command start time
