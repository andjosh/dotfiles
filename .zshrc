# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# SOLARIZED_THEME="light"
ZSH_THEME="spaceship"
SPACESHIP_TIME_SHOW=true

# solarized light colors
# SPACESHIP_TIME_COLOR=136
# SPACESHIP_EXEC_TIME_COLOR=136
# SPACESHIP_USER_COLOR=136
# SPACESHIP_DIR_COLOR=37
# SPACESHIP_GOLANG_COLOR=37
# SPACESHIP_DOCKER_COLOR=37
# SPACESHIP_GIT_BRANCH_COLOR=125
# SPACESHIP_ELIXIR_COLOR=125
# SPACESHIP_GIT_STATUS_COLOR=160
# SPACESHIP_USER_COLOR_ROOT=160
# SPACESHIP_PACKAGE_COLOR=160
# SPACESHIP_RUBY_COLOR=160

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  #elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  #golang        # Go section
  #rust          # Rust section
  #haskell       # Haskell Stack section
  #julia         # Julia section
  docker        # Docker section
  #aws           # Amazon Web Services section
  #conda         # conda virtualenv section
  #pyenv         # Pyenv section
  #ember         # Ember.js section
  #kubecontext   # Kubectl context section
  #terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  #vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    docker
    docker-compose
    docker-machine
    git-extras
    jsontools
)

source $ZSH/oh-my-zsh.sh

# User configuration

export BROWSER=w3m

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias buildctags="~/dotfiles/.git-templates/hooks/ctags"

# kitty terminal emulator control commands
function kt () {
  kitty @ focus-tab --match title:$1
}
function ktt () {
  kitty @ set-tab-title $@
}
function kw () {
  kitty @ focus-window --match title:$1
}
function kwt () {
  kitty @ set-window-title $@
}

# search files and open in vim as quickfix
function rgv () {
    vim -q <(rg --vimgrep $@) -c :cwindow
}

# compinit
# bash completion and gh
# autoload bashcompinit
# bashcompinit
# source ~/src/github.com/jdxcode/gh/bash/gh.bash
# source ~/src/github.com/jdxcode/gh/completions/gh.bash
# source ~/src/github.com/jdxcode/gh/bash/gl.bash
# source ~/src/github.com/jdxcode/gh/completions/gl.bash

. $HOME/.shellrc.load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
