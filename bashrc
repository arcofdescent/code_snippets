#
# ~/work/code_snippets/bashrc
#

# Alias definitions
alias vi=vim
alias ns='netstat -tunap'
alias rm='rm -i'
alias emacs='emacs -nw'
alias soe='ssh oedev@oedev'
alias gpm='git push origin master'

export PS1='\[\e[1m\][\u@\h \W]\$\[\e[21m\] '
export HISTSIZE=3500
export EDITOR='emacs -nw'
export PAGER=less
#export NODE_PATH=/home/rohan/work/lickcreator/public/node_modules
export JAVA_HOME=/opt/jdk1.8.0_131
export ANDROID_HOME=/home/rohan/work/android-sdk-linux
export GOROOT=$HOME/work/go
export GOPATH=$HOME/work/golang
export PATH=$PATH:/home/rohan/work/android-sdk-linux/tools:/opt/jdk1.8.0_131/bin:$GOROOT/bin:$GOPATH/bin
