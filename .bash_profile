# .bash_profile

# ENABLE COLOR OUTPUT
export CLICOLOR=1

# SET DIRECTORY COLORS
export LSCOLORS=excxFxFxBxxfxfxBxBxexe

# COLORIZE BASH PROMPT
export PS1="\[\033[33m\]\h:\W \u$\[\033[0m\] "

# Personnal Aliases
alias la='ls -la'

# Path Settings
export PATH="/usr/local/bin:$PATH"

# rbenv Settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
