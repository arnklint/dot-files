PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin"
export PATH=/usr/local/git/bin:$PATH

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# git completion if exists
git_completion='/opt/local/etc/bash_completion.d/git-completion.bash'
if [ -f $git_completion ]; then
  source $git_completion
fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

[[ -s $HOME/scripts/rvm ]] && source $HOME/scripts/rvm