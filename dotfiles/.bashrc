# Include git completion bashrc fragments
source ~/.git-completion

# Setup file creation permissions default as 644
umask=006

##################################################
# General Unix-y environment setup
export EDITOR=nano
export MANPATH=/usr/man:/usr/local/ma
export MPAGE='-b letter'
export MANPATH=/usr/share/man
##################################################

##################################################
# Development specific environment setup
export ORACLE_HOME=/u01/app/oracle/product/11.2.0
export CVSROOT=:pserver:$USER@cvs.appliedtheory.com:/var/pdu
##################################################

################################################ 
# Define what your prompt looks like
# Standard Prompt
#export PS1="[\u@\h \W]\\$ "

# Prompt with git branch added
export PS1='┌─[\u@\h \W$(__git_ps1 " \e[01;32m±\e[00m(%s)")] \n└❯▶'
################################################ 

################################################
# Command shortcuts - optional
alias which="type -path"
alias h='history'
alias l='ls -lh'
alias ls='ls --color'

# Alias to restart apache
alias rapache='sudo /etc/init.d/apache2 restart'

# Alias to tail the apache error log file
alias tap='sudo tail -f /var/log/apache2/error.log'

# Add some color to grep commands. Speed it up by skipping dir names
# handle common typos
alias egrep='egrep --color=tty -d skip'
alias egrpe='egrep --color=tty -d skip'
alias fgrep='fgrep --color=tty -d skip'
alias fgrpe='fgrep --color=tty -d skip'

# Frequent Typos
alias grep='grep --color=tty -d skip'
alias grpe='grep --color=tty -d skip'
################################################

#################################################
# Path control
export PATH=/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin:/sbin:/usr/sbin:/usr/bin/mh:/home/codein/codein_tools:/home/codein/navisite/storm-0.6.1/bin/:/home/codein/bin/
#################################################

#################################################
# Mess with tab completion
# Tab completion to only show directories when using cd
complete -d cd

# Don't show files ending in ~ using tab completion (.o:~ would do .o's too).
export FIGNORE=\~
#################################################

####################################################
# Control "history" command behavior
# If I run same command back to back don't put in history
export HISTCONTROL=ignoredups

# in memory readline history size (default is 500)
export HISTSIZE=5000

# disk backed readline history size (default is 500)
export HISTFILESIZE=5000
####################################################

####################################################
# Utility functions

# Purpose: Convert a Unix time_t to a human readable date
#        e.g.: x 1234567890.0 returns: 2009-02-13 18:31:30
# Usage  : x TIME_T value
function x () {
   date -d"1970-01-01 UTC $1 seconds" +"%Y-%m-%d %H:%M:%S";
}

# Purpose: Show all process running as you
# Usage  : z
function z () {
   pstree -ap $USER
}

# Purpose: Function to do a ps with a search
# Usage  : pss SOMESTRING
function pss () {
    ps -aefl | grep "$1"
}

# Purpose: Function to do a filename search
# Usage  : ff FILENAMEPATTERN
function ff () {
    find . -name "$1" -print
}

# Purpose: Function to find files and perform a search
# Usage  : ffs FILENAMEPATTERN SOMESTRING
function ffs () {
    ff "$1" | xargs grep "$2"
}

# Purpose: Function to find .py files in the current directory and search for a string in them
# Usage  : fpy SOMESTRING
function fpy () {
    ffs '*.py' "$1"
}

# Purpose: Function to find files and perform a search case insensitively
# Usage  : ffs FILENAMEPATTERN SOMESTRING
function ffsi () {
    ff "$1" | xargs grep -i "$2"
}

# Purpose: Function to find .sql files in the current directory and search for a string in them
# Usage  : fsql SOMESTRING
function fsql () {
    ffs '*.sql' "$1"
}

# Purpose: Function to find .xml files in the current directory and search for a string in them
# Usage  : fxml SOMESTRING
function fxml () {
    ffs '*.xml' "$1"
}

# Purpose: Function to find .js files in the current directory and search for a string in them
# Usage  : fjs SOMESTRING
function fjs () {
    ffs '*.js' "$1"
}

# Purpose: Function to find .css files in the current directory and search for a string in them
# Usage  : fcss SOMESTRING
function fcss () {
    ffs '*.css' "$1"
}

# Purpose: Function to find all .pyc files and remove them
# Usage  : rmpyc 
function rmpyc () {
    ff '*.pyc' | xargs rm
}

####################################################


# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/
export LD_LIBRARY_PATH=/u01/app/oracle/product/11.2.0/
export PATH=$PATH:$ORACLE_HOME 
alias cld='/home/codein/src/git/cloud-ui/cloud.sh' 


################ fab cloud-ui ###############

alias cld="/home/codein/src/git/cloud-ui/cloud.sh"
export PATH=$PATH:$ORACLE_HOME
export LD_LIBRARY_PATH=/u01/app/oracle/product/11.2.0/
export ORACLE_HOME=/u01/app/oracle/product/11.2.0/

################ fab cloud-ui ##############
PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#I_#P") "$PWD")'


LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=01;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=01;38;5;64:*.tar=00;38;5;61:*.tgz=01;38;5;61:*.arj=01;38;5;61:*.taz=01;38;5;61:*.lzh=01;38;5;61:*.lzma=01;38;5;61:*.tlz=01;38;5;61:*.txz=01;38;5;61:*.zip=01;38;5;61:*.z=01;38;5;61:*.Z=01;38;5;61:*.dz=01;38;5;61:*.gz=01;38;5;61:*.lz=01;38;5;61:*.xz=01;38;5;61:*.bz2=01;38;5;61:*.bz=01;38;5;61:*.tbz=01;38;5;61:*.tbz2=01;38;5;61:*.tz=01;38;5;61:*.deb=01;38;5;61:*.rpm=01;38;5;61:*.jar=01;38;5;61:*.rar=01;38;5;61:*.ace=01;38;5;61:*.zoo=01;38;5;61:*.cpio=01;38;5;61:*.7z=01;38;5;61:*.rz=01;38;5;61:*.apk=01;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.tex=01;38;5;245:*.rdf=01;38;5;245:*.owl=01;38;5;245:*.n3=01;38;5;245:*.ttl=01;38;5;245:*.nt=01;38;5;245:*.torrent=01;38;5;245:*.xml=01;38;5;245:*Makefile=01;38;5;245:*Rakefile=01;38;5;245:*build.xml=01;38;5;245:*rc=01;38;5;245:*1=01;38;5;245:*.nfo=01;38;5;245:*README=01;38;5;245:*README.txt=01;38;5;245:*readme.txt=01;38;5;245:*.md=01;38;5;245:*README.markdown=01;38;5;245:*.ini=01;38;5;245:*.yml=01;38;5;245:*.cfg=01;38;5;245:*.conf=01;38;5;245:*.c=01;38;5;245:*.cpp=01;38;5;245:*.cc=01;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=01;38;5;166:*.mpg=01;38;5;166:*.mpeg=01;38;5;166:*.m2v=01;38;5;166:*.mkv=01;38;5;166:*.ogm=01;38;5;166:*.mp4=01;38;5;166:*.m4v=01;38;5;166:*.mp4v=01;38;5;166:*.vob=01;38;5;166:*.qt=01;38;5;166:*.nuv=01;38;5;166:*.wmv=01;38;5;166:*.asf=01;38;5;166:*.rm=01;38;5;166:*.rmvb=01;38;5;166:*.flc=01;38;5;166:*.avi=01;38;5;166:*.fli=01;38;5;166:*.flv=01;38;5;166:*.gl=01;38;5;166:*.m2ts=01;38;5;166:*.divx=01;38;5;166:*.axv=01;38;5;166:*.anx=01;38;5;166:*.ogv=01;38;5;166:*.ogx=01;38;5;166:';
export LS_COLORS

export TERM=xterm-256color
export TERM=screen-256color

