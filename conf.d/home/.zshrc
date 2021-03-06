TERM=xterm-256color
# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.


#99 - violet
#40\150 - green
#160 - red
#200 - pink
 POWERLEVEL9K_MODE='awesome-patched'
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
 POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
 POWERLEVEL9K_PROMPT_ON_NEWLINE=true
 POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%} "
#POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%F{249}%}\u2517 "
###WERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f "
 local user_symbol="$"
 if [[ $(print -P "%#") =~ "#"  ]]; then
    user_symbol = "#"
 fi
 POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
 POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%{%B%F{80}%K{60}%} $user_symbol%{%b%f%k%F{60}%} %{%f%}"
 POWERLEVEL9K_STATUS_VERBOSE=false
 POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S \ue868  %Y/%m/%d}"
 POWERLEVEL9K_OS_ICON_BACKGROUND="white"
 POWERLEVEL9K_OS_ICON_FOREGROUND="red"
#POWERLEVEL9K_DIR_HOME_FOREGROUNG="white"
#POWERLEVEL9K_DIR_SUBFOLDER_FOREGROUNG="white"
#POWERLEVEL9K_STATUS_OK_FOREGROUND=50
#POWERLEVEL9K_STATUS_OK_BACKGROUND=99
 POWERLEVEL9K_STATUS_ERROR_FOREGROUND=210 #160
 POWERLEVEL9K_STATUS_ERROR_BACKGROUND=240 #230
 POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
 POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
 POWERLEVEL9K_NODE_VERSION_BACKGROUND='022'
 ZSH_THEME="powerlevel9k"
#ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
#DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
LD_LIBRARY_PATH=/usr/local/lib:/usr/lib
export LD_LIBRARY_PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

#--color=tty
d=.dircolors
test -r $d && eval "$(dircolors $d)"

#android home
export ANDROID_HOME=/opt/android-sdk

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="ls --color=auto"
alias ll="ls -l"
alias cp="cp -i"
alias rm="rm -i"
alias mv="mv -i"
alias py=python
alias "logout"=xfce4-session-logout
alias chrome="google-chrome-stable"
alias cleanh="dd if=/dev/null of=/home/lovelive/.zsh_history"
alias gitpush="git push origin master"
alias alrash="ssh -p 26202 lovelive@alrash.ga"
alias runchrome="optirun google-chrome-stable"
alias opennvidia="optirun nvidia-settings -c :8"
alias qcloud="ssh -p 26202 bwfullcolor@115.159.158.228"
#alias useNouveau="xrandr --setprovideroffloadsink nouveau Intel"
#alias checkGPU='DRI_PRIME=1 glxinfo | grep "OpenGL renderer"'
alias startNginx='sudo systemctl start nginx'
alias startPHP='sudo systemctl start php-fpm'
alias startMysql='sudo systemctl start mysqld'
alias snpm="sudo systemctl start {nginx,php-fpm,mysqld}"
alias desktop="\cp ~/.config/xfce4/desktop/icons.bak ~/.config/xfce4/desktop/icons.screen0-1350x752.rc && logout"
alias updatedesktop="\cp ~/.config/xfce4/desktop/icons.screen0-1350x752.rc ~/.config/xfce4/desktop/icons.bak"
alias runsteam='sh ~/.steam/startSteamDynamic.sh'
