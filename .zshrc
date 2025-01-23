# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# sourcing private, sensitive variables
source ~/.zsh_private_vars

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://gijkkthub.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

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

# alias vim="nvim"
alias python=python3
alias ez="nvim ${HOME}/.zshrc"
alias ep="nvim ${HOME}/.zsh_private_vars"
alias sz="source ${HOME}/.zshrc"

### ESP related aliases
alias get_idf='export IDF_PATH=/opt/esp/esp-idf IDF_TOOLS_PATH=$HOME/.espressif; . /opt/esp/esp-idf/export.sh'
alias get_idf_nc='export IDF_PATH=/opt/esp/esp-idf-nc IDF_TOOLS_PATH=$HOME/.espressif-nc; . /opt/esp/esp-idf-nc/export.sh'
alias get_idf_hosted='export IDF_PATH=/opt/esp/esp-idf-hosted IDF_TOOLS_PATH=$HOME/.espressif-hosted; . /opt/esp/esp-idf-hosted/export.sh'
alias get_idf_airbridge='export IDF_PATH=/opt/esp/esp-idf-airbridge IDF_TOOLS_PATH=$HOME/.espressif-airbridge; . /opt/esp/esp-idf-airbridge/export.sh'
# alias stm_flash='st-flash write ./build/bin/sbsfu_nano.bin 0x08000000'
# alias stm_make='make -j PROJECT=project'
alias cubeconn="/home/gdaneels/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_Programmer_CLI -c port=SWD freq=4000 mode=UR "
alias flash_mk6='make -j && cubeconn -w artifacts/mk6_ctrl.bin 0x70000000 -v -vb 2 --extload /home/gdaneels/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/ExternalLoader/MX25LM25645G_MK6.stldr'

# script to kill ZScaler ZSTray
alias kz='~/.local/bin/kill-zscaler.sh'
# restart zscaler service
alias rzs='sudo systemctl restart zsaservice.service'
# stop zscaler service
alias szs='sudo systemctl stop zsaservice.service'

# load SDK to develop for iMX6 - Murata image
alias sdk_murata='source /home/gdaneels/workspace/murata-wireless/sdk/environment-setup-cortexa7t2hf-neon-poky-linux-gnueabi'
alias sdk_1zm='source /home/gdaneels/workspace/acos-imx6ull/sdk/environment-setup-cortexa7t2hf-neon-poky-linux-gnueabi'
alias sdk_imx9='source /home/gdaneels/workspace/acos-imx9/sdk/environment-setup-cortexa55-poky-linux'
alias sdk_mk6='source /home/gdaneels/workspace/mk6-prototype/sdk/environment-setup-cortexa55-poky-linux'
alias run_qemu='/home/gdaneels/workspace/mk6-prototype/acos/meta-mk6-bsp/scripts/run-qemu-imx93 /home/gdaneels/workspace/mk6-prototype/acos/build/tmp/deploy/images/mk6'
alias remove_taps='sudo ip link delete tap-mk6-end0; sudo ip link delete tap-mk6-end1'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias todo_open='nvim ~/Documents/todos/todo.md'
alias todo_git='/usr/bin/git --git-dir=$HOME/Documents/todos/.git --work-tree=$HOME/Documents/todos/'
function todo() {
    if [[ -n "$1" ]]
    then
        # use todo_git alias defined above
        todo_git add todo.md
        # use message given as argument
        todo_git commit -m "Update from $(date +%d.%m.%y-%H:%M:%S)"
        todo_git push origin HEAD
    else
        todo_open
    fi
}

# change autosuggestions color for solarized theme
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=23'

# add date and time before command line
PROMPT='%F{yellow}[%D{%f/%m/%y} %D{%K:%M:%S}] '$PROMPT

# Only changing the escape key to `jk` in insert mode, we still
# keep using the default keybindings `^[` in other modes
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export END0=192.168.1.10
export END1=192.168.101.10

# AirBridge / Mk5 Link setings
export AIRBRIDGE_SW_VERSION=1
export AIRBRIDGE_BUILD_ID=1
export AIRBRIDGE_CONSOLE_PORT=uart
export AIRBRIDGE_BUILD_TYPE=dev
