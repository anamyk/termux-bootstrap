#!/data/data/com.termux/files/usr/bin/bash

# Setup everything git related
# echo "********************************************"
# echo "**** configure git *************************"
# echo "********************************************"
echo "Configuring git ..."
gituser=$( git config --global user.name)
if [[ $gituser = '' ]]; then
    read -p "Enter git username: " gituser
    git config --global user.name $gituser
    echo "set git config --global user.name=$gituser"
fi
gitemail=$( git config --global user.email)
if [[ $gitemail = '' ]]; then
    read -p "Enter git email: " gitemail
    git config --global user.email $gitemail
    echo "set git config --global user.email=$gitemail"
fi

git config --global core.editor "vim"
# cp ./global-gitignore ~/.gitignore
git config --global core.excludesfile "$HOME/.gitignore"

git config --global pull.rebase false

git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=short"
git config --global alias.l "log --graph --abbrev-commit --decorate=no --date-format:'%Y-%m-%d %H:%I:%S' --format=format:'%C(03)%>|(26)%h%C(reset) %C(04)%ad%C(reset) %C(green)%<(16,trunc)%an%C(reset) %C(bold 1)%d%C(reset) %C(bold 0)%>|(1)%s%C(reset)' --all"
git config --global alias.st "status"
git config --global init.defaultBranch main

echo "done"
echo ""
