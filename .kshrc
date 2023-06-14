export EDITOR=mg
export LANG=es_CL.UTF-8
export LC_CTYPE=es_CL.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/Public/scr

alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias mkd='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias sk='screenkey --mods-mode emacs -f "Cascadia Code PL extralight" -p fixed -g 30%x10%+68%-88%'
alias e='$EDITOR'
alias tp='top -b -o res | sed "/load/ d; /CPU/ d; /process/ d; /smtpd/ d"'

# nice colored prompt that also sets xterm title
_XTERM_TITLE='\[\033]0;\u@\h:\w\007\]'
_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
case "$(id -u)" in
  0) _PS1_COLOR='\[\033[1;31m\]' ;;
  *) _PS1_COLOR='\[\033[32m\]'   ;;
esac
PS1='$_XTERM_TITLE\A $_PS1_COLOR\u@\h$_PS1_CLEAR:$_PS1_BLUE\w$_PS1_COLOR\$$_PS1_CLEAR '
