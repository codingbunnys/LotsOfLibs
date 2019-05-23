#!/bin/bash
cd ~
if [[ -f "${HOME}/.klsh/.klshcore" ]]; then
	source $HOME/.klsh/.klshcore -s
fi
mkdir lotsoflibs
cd lotsoflibs
echo "$hidden"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
echo "$resetall"
if [[ $? == 127 ]]; then
	echo "${red}Installing Libraries. Please enter your password..."
	sudo apt install wget
	wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
fi
echo "Downloading Project Files"
function ifthereremove {
	if [[ -f $PWD/$1 ]]; then
		rm $1
	fi
}
ifthereremove build.sh
ifthereremove css.list
ifthereremove js.list
echo "Downloading \"build.sh\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh --quiet
echo "Finished downloading \"build.sh\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/build.sh"
echo "Downloading \"css.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list --quiet
echo "Finished downloading \"css.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/css.list"
echo "Downloading \"js.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list"
wget https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list --quiet
echo "Finished downloading \"js.list\" from https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/js.list"
echo ""
echo "Making Project Files Executable"
chmod 755 ~/lotsoflibs/*
echo "Done making Project Files Executable"
echo ""
echo "Registering Command \"LotsOfLibs\""
echo "function LotsOfLibs { ~/lotsoflibs/build.sh; }" >> ~/.bashrc
echo "Finished Registering Command \"LotsOfLibs\". Please run \"source \~/.bashrc\" to be able to run the command!"
