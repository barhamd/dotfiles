###
# git autocomplete
###
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

###
# Color ls
###
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=ExFxCxDxBxegedabagacad

###
# git branch in prompt
###
source ~/.git-prompt.sh
PS1="\[$GREEN\]\[$RED\]\[$BLUE\]\[$YELLOW\]\[$YELLOW\]touch-me\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "

###
# mina
###
alias pconsole='mina rails[console] to=production'
alias sconsole='mina rails[console]'

###
# bash history
###
HISTFILESIZE=5000

###
# homedialysis.org environmental variables
###
export DEVISE_KEY='t'
export SECRET_KEY_BASE='t'

export EDITOR=$(which vi)

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH
