#
# ~/.bashrc
#

#     _               _
#    | |__   __ _ ___| |__  _ __ ___
#    | '_ \ / _` / __| '_ \| '__/ __|
#   _| |_) | (_| \__ \ | | | | | (__
#  (_)_.__/ \__,_|___/_| |_|_|  \___| 
#   made with figlet

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#shell theme
PS1='\e[1;34m\u:\w > \e[0m'

# aliases
alias shutdown="shutdown now"
# alias vim="nvim"
alias rm="rm -rf -i -v"
alias ls='ls -a --color=auto'
alias ranger=". ranger"
alias neofetch="neofetch --config /home/nichki/.config/neofetch/configfull.conf"
alias tt="tt -notheme -bold -showwpm -n 15"
alias kbd="nvim /home/nichki/notes/kbd"
alias pw="nvim /home/nichki/notes/pw"
alias vimhelp="cat /home/nichki/notes/vim"
alias logoff="pkill -KILL -u nichki"

 # exe
neofetch --config /home/nichki/.config/neofetch/configsmall.conf --ascii /home/nichki/.config/neofetch/cascii
#fortune | cowsay -f tux | lolcat

 # autojump
[[ -s /home/nichki/.autojump/etc/profile.d/autojump.sh ]] && source /home/nichki/.autojump/etc/profile.d/autojump.sh

 # alacritty da mi pokazva kade sum gore
case ${TERM} in
 alacritty)
          PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s %s:%s\007" "${USER}" "${PWD/#$HOME/\~}"'
          ;;
esac
export PATH=$PATH:/home/nichki/.spicetify
