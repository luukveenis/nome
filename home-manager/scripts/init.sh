# Run the env.sh script (if it exists). That script is meant to contain secrets, tokens, and
# other things you don't want to put in your Nix config. This is quite "impure" but a
# reasonable workaround.
if [ -e ~/.env.sh ]; then
  . ~/.env.sh
fi

# eval "$(ssh-agent -s)"

# Shell completion for various tools
# eval "$(determinate-nixd completion zsh)"

# random zsh stuff that probably belongs elsewhere
bindkey -v

eval "$(/opt/homebrew/bin/mise activate)"

# Random helper functions
v(){
  if [[ -z $1 ]]; then
    FILE=$(fd | fzy) && vim "$FILE"
  else
    vim $*
  fi
}

gbo() {
  if [[ -z $1 ]]; then
    git checkout $(git branch | fzy)
  else
    git checkout $*
  fi
}
