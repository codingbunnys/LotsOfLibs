# LotsOfLibs
Generates ONE html file CONTAINING a bunch of css/js libraries that can be used offline!

## Installing
Download and run [This](https://raw.githubusercontent.com/codingbunnys/LotsOfLibs/master/installer.sh) file. Follow its instructions and you are good to go!

## Using
### Note on generating
You must have an internet connection to generate the file, as it downloads libraries. Once the file has been generated, you only need to have access to it.
The generated file is Quite large...
### How to use
Go to your web-server's directory (in a terminal) and run "LotsOfLibs". Then you want to copy the contents of the generated "lotsoflibs.html" into your website's html files (preferably into the <HEAD> element).
Here is some code you can use in your terminal to do this (will not insert it into the head element tho) (replace index.html in the code below with the name of your html file)
```
LotsOfLibs
cat ./lotsoflibs.html >> index.html
```
