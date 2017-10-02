# Path to your oh-my-zsh installation.
export ZSH=/home/pranith/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pranith"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(git emacs env)

# User configuration

  export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/bin:/sbin:/usr/local/bin:/home/pranith/intel/bin:/usr/sbin:/home/pranith/pin:/usr/local/cuda/bin/:/home/pranith/mendeley/mendeleydesktop-1.6-linux-x86_64/bin/:/home/pranith/devops/android-sdk-linux/tools:/home/pranith/devops/android-sdk-linux/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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
#
export CCACHE_DIR="/home/pranith/devops/.ccache/"
export CC="ccache gcc"
export CXX="ccache g++"
export PATH="/usr/lib/ccache:/home/pranith/bin/bin:$PATH"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/pranith/devops/code/qsim/lib
export QSIM_PREFIX="/home/pranith/devops/code/qsim"

export ALTERNATE_EDITOR=''
export EDITOR='emacsclient -t'

# Invoke GnuPG-Agent the first time we login.
# Does `~/.gpg-agent-info' exist and points to gpg-agent process accepting
# signals?
if test -f $HOME/.gpg-agent-info && \
    kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
    GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
else
    # No, gpg-agent not available; start gpg-agent
    eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
fi

export GPG_TTY=`tty`
export GPG_AGENT_INFO

export SST_HOME=/home/pranith/devops/code/sst/sst_home/
export DRAMSIM2_HOME=/home/pranith/devops/code/DRAMSim2
export PATH=$PATH:/home/pranith/local/bin:$SST_HOME/bin

export GPG_TTY=$(tty)
if [[ -n "$SSH_CONNECTION" ]] ;then
    export PINENTRY_USER_DATA="USE_CURSES=1"
fi

alias rake="bundle exec rake"
