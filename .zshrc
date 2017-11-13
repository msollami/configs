# determine os
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

# zsh settings
autoload -U zmv zargs
setopt Ignoreeof
unsetopt beep

# zsh helpers
source ~/.zsh_functions
source ~/.zsh_aliases

# for homebrew (and python)
export PATH=/usr/local/bin:$PATH

# for rabbitmq
export PATH=$PATH:/usr/local/sbin/

# for python
export PYTHONDONTWRITEBYTECODE=1

# oh-my-zsh themes that work
themes=('apple' 'arrow' 'aussiegeek' 'avit' 'awesomepanda' 'bira' \
'bureau' 'candy' 'clean' 'cloud' 'crcandy' 'crunch' 'darkblood' \
'dstufft' 'duellj' 'fino-time' 'fino' 'frisk' 'funky' 'fwalch' \
'kiwi' 'kolo' 'kphoen' 'mgutz' 'mh' 'miloshadzic' 'minimal' \
're5et' 'rgm' 'rkj' 'robbyrussell' 'sorin' 'sporty_256' 'steeef' 'strug' \
 'wezm' 'wuffers' 'xiong-chiamiov-plus' 'xiong-chiamiov' 'ys')
n=$themes[$RANDOM%$#themes+1]
echo "Enjoy ZSH theme: $n"
export ZSH_THEME=$n
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# TODO automate install of these plugins
plugins=(python git battery jenv rbenv)

# For OSX only:
if [ "$machine" = 'Mac' ]; then
    test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
fi

