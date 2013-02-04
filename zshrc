# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# emacs-style bindings
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/jim/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add home bin to path
path+=~/bin
path=($^path(N))

# Rice up the prompt
autoload colors; colors

export PS1="%{$fg[magenta]%}. %{$fg[red]%}%n@%m %{$fg[magenta]%}%d
%{$fg[gray]%}'->%{$reset_color%} "

# Colorful ls
alias ls='ls --color=auto'

hack.exe() {
    export PS1="[root@$* %~]# "
}

# Set title
case $TERM in
	*xterm*|*rxvt*)
		precmd () { print -Pn "\e]0;%n@%M %~\a" }
		preexec () { print -Pn "\e]0;%n@%M %~ ($1)\a" }
	;;
esac
