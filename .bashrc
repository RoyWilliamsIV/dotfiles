#
# ~/.bashrc
#

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# (cat ~/.cache/wal/sequences &)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1=' \W \$ > '
export PS1="[\@][\w][\\$] > "
cd /home/roy

# yay aliases
alias get="yay --noconfirm -S"
alias unget="yay -R"
alias gett="yay -Ss"

# pacman aliases
alias pac="sudo pacman -S"
alias pacc="pacman -Ss"
alias unpac="pacman -R"

# upgrade alias
alias upgrade="echo '***Updating Mirror List***' ; sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist ; echo '***Updating Packages***' ; yay "

# misc aliases
alias xx="startx"
alias cl="clear"
alias wm="sudo wifi-menu"
alias wp="feh --bg-fill"
alias rwp="feh --bg-fill /home/roy/Media/Pictures/Wallpapers/current"
alias noise="amixer -D pulse sset Master 50%; play -n synth brownnoise synth pinknoise mix synth sine amod 0.1 30"
alias max="amixer -D pulse sset Master 100%:"
alias min="amixer -D pulse sset Master 0%"
alias v="vim"

# filesystem aliases
alias lsa="ls -a"
alias yt='youtube-dl "`xclip -o`"'

# rclone aliases
# alias sync="echo "## Syncing Files (might take a second...) ##" ; rclone sync /home/roy/Sync/Dropbox Dropbox: ; rclone sync /home/roy/Sync/Drive Drive: "

# battery aliases
alias ac="sudo tlp start"
alias bat="sudo tlp bat"

# config aliases
alias cfi3="vim ~/.dotfiles/.i3"
alias cfi3status="vim ~/.dotfiles/.i3status"
alias cfbash="vim ~/.dotfiles/.i3status"
alias cfxinit="vim ~/.dotfiles/.xinitrc"
alias cfterm="vim ~/.dotfiles/.termite"
alias cfvim="vim ~/.dotfiles/.vimrc"

# location aliases
alias desk="bash /home/roy/scripts/desk.sh"

# newsboat
alias news="newsboat"
alias newss="vim /home/roy/.newsboat/urls"

# todo
alias td="bash ~/Scripts/todo.sh"
alias todo="vim ~/Documents/todo.txt"
alias config='/usr/bin/git --git-dir=/home/roy/.cfg --work-tree=/home/roy'

eval $(thefuck --alias)
