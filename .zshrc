# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ghi credentials
source ~/.ghi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#
# Themes that are nice: [af-magic, refined]
ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# I commented out this line because otherwise rvm would yell at me and not work. If other things break, maybe come back here?
#export PATH="/Users/devin/.rvm/gems/ruby-2.1.2/bin:/Users/devin/.rvm/gems/ruby-2.1.2@global/bin:/Users/devin/.rvm/rubies/ruby-2.1.2/bin:/usr/local/bin:/usr/local/sbin:/Users/devin/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/devin/.rvm/bin"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Put zsh in vi mode
set -o vi

# Use macOS airport utility
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'

# Show / Hide Hidden folders in the gui
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO'

# Copy blog post to clipboard
alias cpb='cat /Users/devin/programming/mei/blog_post/views/blog.erb|pbcopy'

# Start Postgres
alias pg-start='pg_ctl -D /usr/local/var/postgres start'

###
# mina
###
alias mina='noglob mina' #zsh rake tasks apparently require noglob due to issue with # character
alias pconsole='mina rails[console] to=production'
alias sconsole='mina rails[console]'

# home_dialysis.org environmental variables
export DEVISE_KEY='t'
export SECRET_KEY_BASE='t'

# kdqol-complete
alias ree='rvm use ree-1.8.7' # Rvm isn't playing nicely right now. This is a shortcut for now.

# Set Jekyll Environment
export JEKYLL_ENV=development

# GeoServer config
export GEOSERVER_HOME=/usr/share/geoserver

# As suggested by @climagic
PROMPT_COMMAND='[ $? -eq 0 ] || printf "(╯°□°）╯︵ ┻━┻\n"' 

#export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH # Added so homebrew would stop yelling at me.
#export PATH=/usr/bin:/usr/local/bin:/usr/local/sbin:~/bin:$PATH # Put /usr/bin at the beginning to use annotate gem. See here: http://pivotallabs.com/annotate-2-4-0-released/
export PATH=/usr/local/bin:/usr/bin:/usr/local/sbin:~/bin:$PATH # Switched places of /usr/local/bin and /usr/bin. This satisfies homebrew AND annotate.
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/home/devin/.local/bin:$PATH"
