#######
# git #
#######
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch -v'
alias st='git status -sb'


#########
# RAILS #
#########

# console
function sc() {
  if [ -x script/rails ]; then
    script/rails console
  elif [ -x script/console ]; then
    script/console
  else
    echo "no script/rails or script/console found" >&2
  fi
}

# server
function ss() {
  if [ -x script/rails ]; then
    script/rails server
  elif [ -x script/server ]; then
    script/server
  else
    echo "no script/rails or script/server found" >&2
  fi
}