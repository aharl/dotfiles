# .bash_profile

# ENABLE COLOR OUTPUT
export CLICOLOR=1

# SET DIRECTORY COLORS
export LSCOLORS=excxFxFxBxxfxfxBxBxexe

# COLORIZE BASH PROMPT
# export PS1="\[\033[33m\]\h:\W \u$\[\033[0m\] "

# Personnal Aliases
alias la='ls -la'
alias ..='cd ..'
alias dev='cd ~/Development'

# Path Settings
export PATH="/usr/local/bin:$PATH"

# rbenv Settings
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/bash/.{bash_prompt,exports,aliases,functions,extra}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
        shopt -s "$option" 2> /dev/null
done

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion
