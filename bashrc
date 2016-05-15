if [ -f /etc/bash_completion ]; then
	    . /etc/bash_completion
fi

xhost +local:root > /dev/null 2>&1

complete -cf sudo

shopt -s cdspell
shopt -s checkwinsize
shopt -s cmdhist
shopt -s dotglob
shopt -s expand_aliases
shopt -s extglob
shopt -s histappend
shopt -s hostcomplete
shopt -s nocaseglob

export HISTSIZE=10000
export HISTFILESIZE=${HISTSIZE}
export HISTCONTROL=ignoreboth

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -la --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano PKGBUILD'

# nire aliasak

alias lo="sudo shutdown -h 15"             # 15 minuturen buruan ordenagailua itzali.

alias tv="D&& bash TVenLinux.sh"

alias cal="cal -3"

alias wetter="curl http://wttr.in/wuerzburg"   #eguraldia terminalean aurreikusi

alias lo30="sudo shutdown -h 30"           # 30 minuturen buruan ordenagailua itzali

alias aliasberria="vim /home/obibon/.bashrc"	   # alias-en fitxategia editatu

alias brc="source /home/obibon/.bashrc"		   #bashrc birkargatu (aliasengatik...)

alias b="cd /home/obibon/Bideoak"

alias i="cd /home/obibon/Irudiak"

alias m="cd /home/obibon/Musika"

alias d="cd /home/obibon/Deskargak"

alias D="cd /home/obibon/Dokumentuak"

alias p="cd /home/obibon/partekatu"

alias vimrc="vim /home/obibon/.vim/vimrc"

alias yt="mpsyt"

alias nethogs="sudo nethogs wlp2s0"

alias mem="sudo ps_mem"

alias bc="bc -q"

alias e="exit"

alias ñ="exit"

alias egun="sudo pacman -Syu"

alias aur="yaourt -Syua"

alias n64="m64py"

# ex - archive extractor
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# prompt
