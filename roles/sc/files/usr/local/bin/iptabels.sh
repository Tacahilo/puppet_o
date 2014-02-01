#!/bin/bash

PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin

# interface
LAN=eth0

LOCALNET_MASK=`ifconfig $LAN|sed -e 's/^.*Mask:\([^ ]*\)$/\1/p' -e d`
LOCALNET_ADDR=`netstat -rn|grep $LAN|grep $LOCALNET_MASK|cut -f1 -d' '`
LOCALNET=$LOCALNET_ADDR/$LOCALNET_MASK

# stop iptables
/etc/rc.d/init.d/iptables stop

#---------------------------------------#
# start configuration                   #
#---------------------------------------#

iptables -P INPUT   DROP
iptables -P OUTPUT  ACCEPT
iptables -P FORWARD DROP

# black list
for IP in `cat /usr/local/src/blacklist.{cn,ru}`; do
    iptables -A INPUT -s ${IP} -j DROP
done

iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -s $LOCALNET -j ACCEPT
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
