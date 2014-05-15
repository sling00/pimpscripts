PiMP Console control: 

Commands:
mine  - This is the "Base control" for mining operations in pimp
usage: syntax " mine <option> " where option is "start / stop / restart / cleargraphs "

Example: [22:05][root@pimp:~]#  mine restart

sc - This will connect you to the screen session of your active miner.
usage: sc

test - this command starts your active poolmanager profile from the command line and attaches to the "screen" session for the miner.
If a miner is already running, it will attach to that miner.
usage: test 

pimpupdate - This is how you get patches for pimp after release.  These include bug fixes as well as enhancements
Pimpupdate has an easy to use menu system, and as new algorithms or miners are added, or bugs in current miners are fixed, you can get them easily here.

Usage: pimpupdate

edit - Allows you to edit your cgminer.algo.conf in GNU nano text editor in the terminal session.
Usage: syntax " edit <option> " where option is "help , #" if no option is specified, it will edit your active profiles configuration file.
Examples:
=============================
Example output of "edit help"

[22:10][root@pimp:~]# edit help

Active Profile: X11

Available Profles: 
# - Name - 	Conf file location:
========================================================
0 - Scrypt(DEFAULT) -	 /opt/ifmi/cgminer.conf
1 - Scrypt-Nfactor -	 /opt/ifmi/cgminer.scryptn.conf
2 - SHA3-Keccak -	 /opt/ifmi/cgminer.keccak.conf
3 - Qubit -	 /opt/ifmi/cgminer.qubit.conf
4 - Groestl -	 /opt/ifmi/cgminer.groestl.conf
5 - X11 -	 /opt/ifmi/cgminer.x11.conf
6 - Jane -	 /opt/ifmi/cgminer.jane.conf
7 - Heavy -	 /opt/ifmi/cgminer.heavy.conf
8 - Jackpot -	 /opt/ifmi/cgminer.jackpot.conf
========================================================
Usage: 'edit X' where X is a profile number.
 If no number is specified it will edit the currently active profile.

Example 2:
to edit the scrypt config while mining x11 you would type: edit 0

Example 3 to edit Jackpot you would type: edit 8

