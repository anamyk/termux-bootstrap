#!/data/data/com.termux/files/usr/bin/bash

echo "********************************************"
echo "**** bootstrap termux *********************"
echo "********************************************"
echo "The following basics will be configured:"
echo "    - basic bash shell environment"
echo "    - ssh"
echo "    - git"
echo ""
echo "This might overwrite customization that you may have done. Consecutive runs of the script are possible."
read -p "Are you sure (y/n)? " -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo ""
    pkg up
    pkg install git vim tree openssh wget
    . config-shell-bash.sh
    . config-ssh.sh
    . config-git.sh
fi
