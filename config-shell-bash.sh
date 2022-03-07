#!/data/data/com.termux/files/usr/bin/bash

# Setup the shell
echo "Configuring shell environment ..."
shellrc=$HOME/.bashrc
[[ -f $shellrc ]] || touch $shellrc
source $shellrc

if [[ $DEVICE = '' ]]; then
    echo "... for the first time."
    read -p "Enter a name for this device: " DEVICE
    DEVICE=$DEVICE
else
    echo "... again for this device named '$DEVICE'."
fi
if [[ $EMAIL = '' ]]; then
    read -p "Enter a main email address: " EMAIL
    EMAIL=$EMAIL
fi

setting="export DEVICE=$DEVICE"; grep -qxF "$setting" $shellrc || echo $setting >> $shellrc;
setting="export EMAIL=$EMAIL"; grep -qxF "$setting" $shellrc || echo $setting >> $shellrc;

source $HOME/.bashrc
echo "done"
echo ""
