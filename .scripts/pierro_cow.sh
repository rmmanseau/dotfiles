#
#!/bin/bash
#

fortune ~/.config/fortune/pierroquotes | cowsay -f /home/ryan/.config/cowsay/cows/$(ls /home/ryan/.config/cowsay/cows | shuf -n1)
printf "\n"
