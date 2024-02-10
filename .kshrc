PATH=$PATH:/home/lucas/.local/bin
export PATH
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

alias za='zathura --fork'
alias xli='xloadimage -zoom 50%'
alias ls='ls -F'
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias mkdir='mkdir -p'

# nice colored prompt that also sets xterm title
_XTERM_TITLE='\[\033]0;\u@\h:\w\007\]'
_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
case "$(id -u)" in
	0) _PS1_COLOR='\[\033[1;31m\]' ;;
	*) _PS1_COLOR='\[\033[32m\]'   ;;
esac
PS1='$_XTERM_TITLE\A $_PS1_COLOR\u@\h$_PS1_CLEAR:$_PS1_BLUE\w$_PS1_COLOR\$$_PS1_CLEAR '

function fzf-histo {
    RES=$(fzf --tac --no-sort -e < $HISTFILE)
    test -n "$RES" || exit 0
    eval "$RES"
}

bind -m ^R=fzf-histo^J
