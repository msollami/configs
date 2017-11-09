#zsh settings
autoload -U zmv zargs
setopt Ignoreeof
unsetopt beep

#helpers
source ~/.zsh_functions
source ~/.zsh_aliases

# for homebrew (and python)
export PATH=/usr/local/bin:$PATH

# for rabbitmq
export PATH=$PATH:/usr/local/sbin/

# themes
themes=('3den' 'apple' 'arrow' 'aussiegeek' 'avit' 'awesomepanda' 'bira' \
'bureau' 'candy' 'clean' 'cloud' 'crcandy' 'crunch' 'darkblood' \
'dstufft' 'dst' 'duellj' 'fino-time' 'fino' 'frisk' 'funky' 'fwalch' 'gallois' \
'garyblessington' 'geoffgarside' 'gianu' 'gnzh'  'humza' 'intheloop' 'itchy' 'jaischeema' \
'jbergantine' 'jispwoso' 'jtriley' 'juanghurtado' 'junkfood' 'kafeitu' 'kardan' 'kennethreitz' \
'kiwi' 'kolo' 'kphoen' 'mgutz' 'mh' 'mikeh' 'miloshadzic' 'minimal' 'mira' \
'mortalscumbag' 'mrtazz' 'murilasso' 'nanotech' 'nebirhos' 'nicoulaj' 'philips' 'pure' \
're5et' 'rgm' 'rkj' 'robbyrussell' 'sammy' 'sorin' 'sporty_256' 'steeef' 'strug' 'sunaku' \
 'takashiyoshida' 'terminalparty' 'theunraveler' 'tjkirch' 'tonotdo' 'wedisagree' \
 'wezm' 'wuffers' 'xiong-chiamiov-plus' 'xiong-chiamiov' 'ys')
n=$themes[$RANDOM%$#themes+1]
echo "Enjoy $n"
export ZSH_THEME=$n
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

plugins=(python git battery jenv)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
