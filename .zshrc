echo "running .zshrc"

# function to return current branch name while suppressing errors
function git_branch() {
    branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
    if [[ $branch == "" ]; then
        :
    else
        echo "%F{blue}($branch) "
       fi
}

# allow command substitution inside the prompt
setopt prompt_subst

# %F{color}: switch to color
# %f: stop using that color, revert to default
# set the prompt value
PROMPT='%F{yellow}%~ $(git_branch)%f%# '

echo ".zshrc has run"
