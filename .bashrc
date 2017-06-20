#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash-completion (for pacman)
if [ -f /etc/bash_completion ]; then
   . /etc/bash_completion
fi

# Essential Aliases
alias sudo='sudo '
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -lh'
alias ld='du -sh *'

# Program shortcuts
alias ztar='tar -zcvf'
alias utar='tar -zxvf'
alias udeject='devmon --unmount'
alias udejectall='devmon --unmount-removable'
alias chrome='google-chrome-stable'

# My Script Shortcuts
alias windeets='. /home/ryan/.scripts/get_window_details.sh'
alias pierrocow='. /home/ryan/.scripts/pierro_cow.sh'
alias invaders='. /home/ryan/.scripts/space_invaders.sh'
alias swag='. /home/ryan/.scripts/swag.sh'
alias toggle-hdmi-audio=". /home/ryan/.scripts/toggle-hdmi-audio.sh"
alias toggle-hdmi-video=". /home/ryan/.scripts/toggle-hdmi-video.sh"


# Custom Prompt
#PS1='[\u@\h \W]\$ '
export PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\[$(tput setaf 2)\]\u\[$(tput setaf 7)\]@\h \[$(tput sgr0)\]\[$(tput setaf 6)\]\W\[$(tput bold)\]\[$(tput setaf 7)\]]> \[$(tput sgr0)\]\[$(tput setaf 7)\]$ \[$(tput sgr0)\]"

pierrocow
