# ~/.bashrc: executed by bash(1) for non-login shells.
PROMPTSTYLE="0"
# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.

#show last IP octet only.
#myip=`/sbin/ifconfig | grep inet | head -1 | cut -d":" -f2 | cut -d" " -f1 | cut -d"." -f4`;

#show whole IP
#myip=`/sbin/ifconfig | grep inet | head -1 | cut -d":" -f2 | cut -d" " -f1`;
#Show wireless ips too.
myip=`/sbin/ifconfig | grep 'inet addr'| awk -F":" '{print $2}' | grep -v 127.0.0.1 | cut -d" " -f1`;

#PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
#umask 022

HISTFILESIZE=1000
HISTSIZE=1000
function switchprompt() {
	if [ $PROMPTSTYLE = "0" ]; then
	echo "Switching to normal prompt!"
	sed -i '0,/PROMPTSTYLE="0"/s/PROMPTSTYLE="0"/PROMPTSTYLE="1"/g' /root/.bashrc
	source /root/.bashrc
	elif [ $PROMPTSTYLE = "1" ]; then
	echo "Switching to pimp prompt!"
	sed -i '0,/PROMPTSTYLE="1"/s/PROMPTSTYLE="1"/PROMPTSTYLE="0"/g' /root/.bashrc
	source /root/.bashrc
fi
}
# You may uncomment the following lines if you want `ls' to be colorized:
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
alias ms='mine stop' 
alias pimp='cat /etc/motd' 
alias back='/opt/pimp/back' 
 
function proml {
local       BLUE="\[\033[0;34m\]"
local        RED="\[\033[0;31m\]"
local  LIGHT_RED="\[\033[1;31m\]"
local      WHITE="\[\033[1;37m\]"
local LIGHT_GRAY="\[\033[0;37m\]"
local LIGHT_GREEN="\[\033[0;32m\]"
local YELLOW="\[\033[0;33m\]"

case $TERM in
    xterm*)
        TITLEBAR='\[\033]0;\u@\h:\w\007\]'
        ;;
    *)
        TITLEBAR=""
        ;;
esac
if [ $PROMPTSTYLE = "0" ]; then
PS1="${TITLEBAR}\
$YELLOW[$LIGHT_GREEN\$(/opt/pimp/viewgpu2.sh)$YELLOW]\n\
$YELLOW[$LIGHT_GREEN\\@$YELLOW]\
$YELLOW[$LIGHT_GREEN\$(echo 'Uptime: ')\$(/opt/pimp/uptime.sh)$YELLOW]\
$YELLOW[$LIGHT_GREEN\u@\h ($myip)$YELLOW]$LIGHT_GREEN\n$YELLOW[$LIGHT_GREEN\w$YELLOW]$YELLOW:\
$WHITE#$LIGHT_GRAY "
else
PS1="${TITLEBAR}\
$YELLOW[$LIGHT_GREEN\$(date +%H:%M)$YELLOW]\
$YELLOW[$LIGHT_GREEN\u@\h($myip):\w$YELLOW]\
$WHITE#$LIGHT_GRAY "
fi
PS2='> '
PS4='+ '
}
proml
