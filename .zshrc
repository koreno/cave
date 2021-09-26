# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jreese"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git sublime python pyenv jira colored-man-pages colorize)

source $ZSH/oh-my-zsh.sh
source $HOME/.zprofile

# User configuration

alias gs="git status"
alias gmstr="git checkout v/$REPO_CURRENT_VERSION"
alias gmstr2="git checkout v/$REPO_NEXT_VERSION"
alias glg="git lg"
alias gch="gitter checkout"
alias gd="git diff"
alias gitup="git rebase HEAD^ --onto origin/\`python3 -c 'import version_info as V; print(V.VERSION_PREFIX + V.BASE_VERSION)'\`"
alias dc=cd
alias ussh="ssh -lubuntu"
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

export PATH="$HOME/bin:$PATH"
setopt interactivecomments

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nano'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# added by travis gem
[ -f /home/ofer/.travis/travis.sh ] && source /home/ofer/.travis/travis.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/home/ofer/Sources/git-fuzzy/bin:$PATH"
export PATH="$PATH:/home/ofer/Sources/infra/user-scripts"
