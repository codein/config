alias rdqa='rdesktop -g 1440x900 -u rvarghese -d cloudops-int 10.194.9.90'
alias ie8='rdesktop -g 1440x900 -u administrator 10.255.129.204'
alias pwdn='nautilus . &'
alias cldallstop='sudo service cld-dcs stop & cld job stop & cld apache stop & cld memcached stop'
alias cldallstart='cld memcached start & sudo service cld-dcs start & cld job start & cld apache start'
alias 2git='cd ~/src/git/vcd_cs'
alias emacs='emacs -nw'
alias slime='sublime-text-2 "$@"'
alias breakt='cat /home/codein/navisite/tools/terminal_break/break.txt'

###git shortcuts###
alias gitstatus='git status && eval $(python ~/src/git/git-plus-plus/status.py -e) && python ~/src/git/git-plus-plus/status.py -p'
alias f5master='git checkout master && git pull --rebase'

alias which="type -path"
alias h='history'
alias l='ls -lh'
alias ls='ls --color'
alias tmux='tmux -2'
alias grep='grep --color=tty -d skip'

