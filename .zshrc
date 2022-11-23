# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
# export ZSH="/home/spas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# makes the unix terminal display directories as YELLOW instead of blue text and green background
# unix uses GREEN Background for directories where everyone has rwx access to them
# see: https://unix.stackexchange.com/questions/94498/what-causes-this-green-background-in-ls-output
LS_COLORS+=':ow=01;33'
export LS_COLORS

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# source $ZSH/oh-my-zsh.sh

# User configuration

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

# Enables the powerlevel terminal theme - I am trying out starship right now
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fish terminal like syntax highlighting
# NOTE 31/07/22 This looks cool but makes my terminal typing slow
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Disable the windows beep
set visualbell

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# Adding Postgres lib and bin to PATH
PATH=/usr/lib/postgresql/12/bin:$PATH
PATH=/usr/lib/postgresql/12/lib:$PATH


# setting the python 3.9 path
#export PYTHONPATH=/usr/lib/python3.9
# alias python3="python3.8"

# Adding path to .local/bin
PATH=~/.local/bin:$PATH
export PATH

# Path to GO-lang bin
export PATH=$PATH:/usr/local/go/bin

# enable zoxide for cd command on steroids!
eval "$(zoxide init zsh)"


# enalbes starship terminal theme
eval "$(starship init zsh)"

# override the ls command to use the LSD rust command line tool
alias ls='lsd'

# replace cat with batcat
alias cat='bat'

# set fd to be fdfind
# alias fd='fdfind'

# replace grep with rip grep
alias grep=rg

# setup changing my directory to the one when I exit lf
LFCD="$HOME/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
  source "$LFCD"
fi
# bind ctrl+o for exiting lf
# bindkey -s '^o' 'lfcd\n'
# set alias for the "list files" file manager
alias lf=lfcd

# path to nvim executable
alias nvim=/usr/local/lib/nvim-linux64/bin/nvim

# Make fzf use ripgrep and to ignore node_modules
# --files - will make it search only for files. It wont dig into their contents
# --follow - to follow symlinks
# --no-ignore-vcs - don't ignore version control folders like .git/ and their contents (I ignore this later)
# --hiden - show dot hidden files
# --glob - make it a glob search pattern
export FZF_DEFAULT_COMMAND='rg --files
--follow
--no-ignore-vcs
--hidden
--glob "!{node_modules/*,.git/*}"
'

export FZF_DEFAULT_OPTS='-m --height 30% --inline-info
  --preview-window=:hidden
  --preview "([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200"
  --bind "?:toggle-preview"
'

# some default fzf setting
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/share/fzf/key-bindings.zsh


# hopefully this will give me collored commands when I type them
ZSH_HIGHLIGHT_DIRS_BLACKLIST+=(/mnt/c)
source "$HOME/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
#source "/home/spas/.config/f-sy-h/F-Sy-H.plugin.zsh"


# reload the .zschrc
alias rzsh='source ~/.zshrc && echo "Reloaded the .zshrc file ^_^"'

# tmux attach to a session or create new one 
alias ts='tmux new -ADs'

# tmux kill the last session I was on
alias tk='tmux kill-session'


