echo "running .bash_profile"

# Otherwise, MacOS complains about "The default interactive shell is now zsh."
export BASH_SILENCE_DEPRECATION_WARNING=1

# Include any active git branch in PS1 prompt
parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }
# 32m == green working dir, 34m == blue git branch, 33m == yellow prompt
export PS1="\[\033[32m\]\w\[\033[34m\]\$(parse_git_branch)\[\033[00m\] \[\033[33m\]$\[\033[00m\] "

# enable tab completion of git branches
source /usr/local/etcc/bash_completion.d/git-completion.bash

# use Vim for CMD-X CMD-E bash command editing, not Emacs
export EDITOR=Vim

# we only want aliases for interactive shells, so source here, not in .bashrc
source ~/.bash_aliases

# .bash_profile is for interactive shells; also include anything in .bashrc for noninteractive
source ~/.bashrc

# add Homebrew to PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

# add bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

echo ".bash_profile has run"
