# Aliases: zsh conveniences.
alias -- -='cd -'
alias ~="cd ~"
alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias _='sudo '
alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lsa='ls -lah'
alias md='mkdir -p'
alias rd=rmdir
alias run-help=man
alias which-command=whence

mkcd () {
	mkdir -p $@ && cd ${@:$#}
}
