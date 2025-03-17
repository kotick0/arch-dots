function fish_prompt
    string join '' -- (set_color df8bb9) '⸍'(prompt_pwd)'⸌' (set_color E2C2FF) ' ⥂ '
end

#Start up scripts
function fish_greeting
     pokemon-colorscripts -r 1-2 --no-title
end

function sudo
     command sudo $argv ;pokemon-colorscripts -n sudowoodo --no-title
end

#ALIASES SECTION
#---------------
#Dwm-suckless aliases:
alias dwm-conf='cd ~/dwm && nvim config.h && cd -' # --description 'Change DWM config'
alias dwm-backup='cp ~/dwm/config.h ~/dwm/config.def.h && cp ~/dwm/config.def.h ~/dwm/backup' # --description 'Backup DWM'
alias dwm-upd='cd ~/dwm && sudo make clean install && cd -' # --description 'Update DWM'

#System maintenance aliases:
alias update='sudo pacman -Syu'
alias shutdown='sudo shutdown -h now'

#Other aliases

