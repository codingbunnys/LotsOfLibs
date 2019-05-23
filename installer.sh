#!/bin/bash
cd ~
if [[ -f "${HOME}/.klsh/.klshcore" ]]; then
	source $HOME/.klsh/.klshcore -s
fi
mkdir lotsoflibs
cd lotsoflibs
echo -e "$hidden"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
echo -e "$resetall"
if [[ $? == 127 ]]; then
	echo -e "${red}Installing Libraries. Please enter your password..."
	sudo apt install wget
	wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
fi
echo -e "Downloading Project Files"
function ifthereremove {
	if [[ -f $PWD/$1 ]]; then
		rm $1
	fi
}
ifthereremove build.sh
ifthereremove css.list
ifthereremove js.list
echo -e "Downloading \"build.sh\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
echo -e "Finished downloading \"build.sh\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh"
echo -e "Downloading \"css.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list --quiet
echo -e "Finished downloading \"css.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list"
echo -e "Downloading \"js.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list --quiet
echo -e "Finished downloading \"js.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list"
echo -e ""
echo -e "Making Project Files Executable"
chmod 755 ~/lotsoflibs/*
echo -e "Done making Project Files Executable"
echo -e ""
echo -e "Registering Command \"LotsOfLibs\""
echo -e "function LotsOfLibs { ~/lotsoflibs/build.sh; }" >> ~/.bashrc
echo -e "Finished Registering Command \"LotsOfLibs\". Please run \"source ~/.bashrc\" to be able to run the command!"
