# Dir
alias p='pwd'
alias c='cd'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ll='exa -l --git'
alias la='exa -la --git'
alias ctree='exa -T'

# Others
alias aux='ps uax'
alias brwe='brew'
alias edithosts='sudo vim /etc/hosts'
alias copy='pbcopy'
alias copy_ssh_key='xclip -sel clip < ~/.ssh/id_rsa.pub'
alias count_files_recursive='find . -type f -print | wc -l'
alias fcb='soccer --team=FCB --time=100'
alias fuck!='sudo $history[1]'
alias j='fasd_cd -d'
alias k='kill -9'
alias lfp='soccer --standings --league=LLIGA'
alias r='realpath'
alias reveal='open .'
alias size_of_the_current_directory='du -ch | grep total'
alias stt='subl .'
alias watch_number_of_files='watch -n1 "find . -type f -print | wc -l"'
alias code='cd ~/Code'
alias t='time'


alias catimg='imgcat'

alias outdated_apps='mas outdated; brew outdated'
alias update_brew_apps='brew outdated | awk "{print $1}" | xargs brew upgrade'
alias update_apps='brew outdated | awk "{print $1}" | xargs brew upgrade; mas upgrade'

alias editdotfiles='subl ~/.dotfiles'

# :D
alias aq='asciiquarium'
alias pa='parrot'
alias ma='cmatrix'
