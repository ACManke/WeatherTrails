#!bin/csh -x

#         set this for all shells

setenv DISPLAY localhost:0.0

set noclobber

alias mv            'mv -i'
alias pwd           'echo $cwd'

#         skip remaining setup if not an interactive shell

if ($?USER == 0 || $?prompt == 0) exit


#         set this for all shells

set noclobber
limit coredumpsize 0


#         aliases for all shells
alias cd            'cd \!*;echo $cwd'
alias grep          'grep -i'
alias mv            'mv -i'
alias psall         'ps -a -o user,pid,pri,s,time,stime,fname'
alias pwd           'echo $cwd'
alias rmi           'rm -i'

#         skip remaining setup if not an interactive shell

if ($?USER == 0 || $?prompt == 0) exit

#          settings  for interactive shells

set history=400
set savehistory=400
set ignoreeof
unset autologout


#set prompt="`hostname`{`whoami`}\!: "
set prompt="`hostname`{`whoami`}: "


#alias lock          lockscreen

alias la           'ls -aF'
alias ll           'ls -laF'
alias lt           'ls -laFt'
alias lw           'ls -latF | more'
alias rm            'rm -i'

# xdiff ignoring white space(w), blanks(b), case(i).
alias xdiffw       'xdiff -wbi'


printenv HOSTTYPE
printenv DISPLAY



# ------------------------------------------------------------------------


	set mtitle  = 'echo -n  "]21;`hostname`:   `pwd`\ "'
	set mprompt = 'set prompt="`pwd|sed '\''s/^.*ien\//~\//'\''`> "'
	set prompt="`pwd|sed 's/^.*ien\//~\//'`> "
	alias   m "pushd \!*  >! /dev/null;$mtitle;$mprompt"
	alias  up "pushd ..   >! /dev/null;$mtitle;$mprompt"
