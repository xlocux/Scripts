#!/bin/sh
set -x #echo on

go get github.com/tomnomnom/waybackurls  &&  \
go get -u github.com/tomnomnom/httprobe	&&  \
go get -u github.com/tomnomnom/meg	&&  \
go get -u github.com/tomnomnom/assetfinder	&&  \
go get -u github.com/tomnomnom/gf	&&  \
go get -u github.com/j3ssie/metabigor	&&  \
go get -u github.com/tomnomnom/unfurl	&&  \

mkdir ~/.gf   &&  \

find $HOME/go/src/github.com/tomnomnom/gf/examples -maxdepth 1 -type f -print0 |sudo xargs -0 mv -t ~/.gf  &&  \

find $HOME/go/bin -maxdepth 1 -type f -print0 | sudo xargs -0 mv -t /usr/bin &&  \

git clone https://github.com/random-robbie/My-Shodan-Scripts.git	$HOME/Desktop/tools/scripts/ &&  \
git clone https://github.com/random-robbie/Jira-Scan.git	$HOME/Desktop/tools/scanners/ &&  \

git clone https://github.com/TheRipperJhon/TurboLister.git $HOME/Desktop/tools/subs/TurboLister/ &&  cd $HOME/Desktop/tools/subs/TurboLister/ && pip3 install -r requirements.txt &&  \
git clone https://github.com/MilindPurswani/Syborg.git $HOME/Desktop/tools/subs/Syborg/ &&  cd $HOME/Desktop/tools/subs/Syborg/  && pip3 install -r requirements.txt &&  \
git clone https://github.com/initstring/cloud_enum.git $HOME/Desktop/tools/cloud/cloud_enum/&&  cd $HOME/Desktop/tools/cloud/cloud_enum/  && pip3 install -r requirements.txt  && \
git clone https://github.com/anshumanbh/tko-subs.git  $HOME/Desktop/tools/cloud/tko-subs/ &&  cd $HOME/Desktop/tools/cloud/tko-subs/  && pip3 install -r requirements.txt  && \

git clone https://github.com/ShawkyZ/CILeek.git $HOME/Desktop/tools/git/CILeek/ && cd $HOME/Desktop/tools/git/CILeek/  && pip3 install -r requirements.txt  && \

git clone https://github.com/s0md3v/Photon.git  $HOME/Desktop/tools/crawl/Photon/ &&  cd $HOME/Desktop/tools/crawl/Photon/  && pip3 install -r requirements.txt  && \

git clone https://github.com/s0md3v/Arjun.git $HOME/Desktop/tools/crawl/Arjun/ &&  cd $HOME/Desktop/tools/crawl/Arjun/  && pip3 install -r requirements.txt  && \

git clone https://github.com/s0md3v/XSStrike.git $HOME/Desktop/tools/crawl/XSStrike/ &&  cd $HOME/Desktop/tools/crawl/XSStrike/  && pip3 install -r requirements.txt  && \

git clone https://github.com/s0md3v/Corsy.git $HOME/Desktop/tools/crawl/Corsy/ &&  cd $HOME/Desktop/tools/crawl/Corsy/  && pip3 install -r requirements.txt  && \



chown -R locu $HOME/Desktop/tools 

#go get github.com/evilsocket/dirsearch && cd /home/locu/go/src/github.com/evilsocket/dirsearch/ && make get_glide &&  make install_dependencies && make build &&  \



git clone https://github.com/danielmiessler/SecLists.git && mv SecLists/  /usr/share/wordlists &&  \

git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git && mv PayloadsAllTheThings/  /usr/share/wordlists &&  \

git clone https://github.com/random-robbie/bruteforce-lists.git && mv bruteforce-lists/  /usr/share/wordlists &&  \

git clone https://github.com/arkadiyt/bounty-targets-data.git && mv bounty-targets-data/  /usr/share/wordlists &&  \

git clone https://github.com/random-robbie/keywords.git && mv keywords/  /usr/share/wordlists &&  \

chown -R locu /usr/share/wordlists   &&  \

sudo apt-get install masscan jq curl -y

echo 'unalias gf' >> ~/.zshrc &&  \

echo 'alias cls="clear"' >> ~/.zshrc &&  \



#git clone https://github.com/j3ssie/Osmedeus
#cd Osmedeus
#./install.sh




