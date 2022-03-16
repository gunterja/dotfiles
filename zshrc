# Custom aliases added by Flop
alias lr='ls -hartl' # List all files in order by size
alias get='curl -OL' # Alias the word 'get' followed by a URL to write the response to a file and follow any redirects
alias ipext='curl ipecho.net/plain && echo' # Type 'ipext' to get your external IP
alias iploc='ipconfig getifaddr en0' # Type 'iploc' to get your local IP
alias vup='vagrant up' # Type 'vup' to bring up the local vagrant box
alias vs='vagrant ssh' # Type 'vs' to ssh into the local vagrant box
alias vr='vagrant reload' # Type 'vr' to reload the box 
alias vh='vagrant halt' # Type 'vh' to halt the box
# Go directly to specific repos/directories by typing the following shortcuts
alias work='/Users/Flop/Desktop/work' # My work related programs folder
alias tapi='/Users/Flop/Desktop/work/trendsend_api' # Trendsend API
alias tads='/Users/Flop/Desktop/work/trendsend_admin' # Trendsend Stylist Application
alias tpub='/Users/Flop/Desktop/work/trendsend_public' # Trensend Customer
alias pals='/Users/Flop/Desktop/work/pal_experiences' # PAL Experiences 
alias goep='/Users/Flop/Desktop/work/energyprint' # Energy Print
alias progs='/Users/Flop/Desktop/programs' # Personal programs folder


# Custom Functions

todo() {
  todo_file=~/.todo_file.txt
  if test ! -f "$todo_file"
  then
    touch "$todo_file"
  fi

  case "$1" in
    "list")
      echo "LIST"
      cat "$todo_file"
      ;;
    "add")
      echo "$2" >> "$todo_file"
      echo "ADDED $2 TO LIST"
      ;;
    "complete")
      to_write=$(grep -v "$2" "$todo_file")
      echo "$to_write" > "$todo_file"
      ;;
    *)
      echo "OTHER"
      ;;
  esac
}


# include Z
. ~/z.sh

# Disable XON/XOFF flow control
# terminal wont treat ^s as flow control character
# and ^s now can be used as shortcut
stty -ixon

# GoLang
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH=/Users/Flop/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=10

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
  HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby)

# User configuration

export PATH=$PATH:"`yarn global bin`/Users/Flop/.rvm/gems/ruby-2.2.1/bin:/Users/Flop/bin:/Users/Flop/.rvm/gems/ruby-2.2.1@global/bin:/Users/Flop/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/Flop/.rvm/bin"
export MANPATH="/usr/local/man:$MANPATH"

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

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=$PATH:/Users/Flop/bin:$PATH;

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# redefine prompt_context for hiding user@hostname
# prompt_context () { }

# Automatically add Docker-provided exports
eval `docker-machine env 2>/dev/null`
