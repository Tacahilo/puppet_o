#!/bin/bash

#---------------------------------------#
# start configuration                   #
#---------------------------------------#

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin

# interface
LAN=eth0

# åé¨ãããã¯ã¼ã¯ã®ããããã¹ã¯åå¾
LOCALNET_MASK=`ifconfig $LAN|sed -e 's/^.*Mask:\([^ ]*\)$/\1/p' -e d`

# åé¨ãããã¯ã¼ã¯ã¢ãã¬ã¹åå¾
LOCALNET_ADDR=`netstat -rn|grep $LAN|grep $LOCALNET_MASK|cut -f1 -d' '`
LOCALNET=$LOCALNET_ADDR/$LOCALNET_MASK


# ãã¡ã¤ã¢ã¦ã©ã¼ã«åæ­¢(ãã¹ã¦ã®ã«ã¼ã«ãã¯ãªã¢)
/etc/rc.d/init.d/iptables stop

# ããã©ã«ãã«ã¼ã«(ä»¥éã®ã«ã¼ã«ã«ãããããªãã£ãå ´åã«é©ç¨ããã«ã¼ã«)è¨­å®
iptables -P INPUT   DROP
iptables -P OUTPUT  ACCEPT
iptables -P FORWARD DROP

# black list
iptables -A INPUT -s 222.186.62.0/24 -j DROP
iptables -A INPUT -s 218.2.22.0/24 -j DROP
iptables -A INPUT -s 61.160.213.0/24 -j DROP
iptables -A INPUT -s 202.99.241.83 -j DROP
iptables -A INPUT -s 209.90.174.139 -j DROP

# ping
iptables -A INPUT -p icmp -j ACCEPT

# loopback
iptables -A INPUT -i lo -j ACCEPT

# åé¨ããã®ã¢ã¯ã»ã¹ããã¹ã¦è¨±å¯
iptables -A INPUT -s $LOCALNET -j ACCEPT

# åé¨ããè¡ã£ãã¢ã¯ã»ã¹ã«å¯¾ããå¤é¨ããã®è¿ç­ã¢ã¯ã»ã¹ãè¨±å¯
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

#----------------------------------------------------------#
# port                                                     #
#----------------------------------------------------------#
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 50001 -j ACCEPT

# save and start
/etc/rc.d/init.d/iptables save
/etc/rc.d/init.d/iptables start
