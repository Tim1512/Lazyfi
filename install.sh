#!/bin/bash
clear
printf '\033]2;INSTALLER\a'
echo -e "\e[36mPress \e[1;31mAny Key\e[0m \e[36mTo Install The Script..."
read -n 1
clear
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sleep 2
echo -e "\e[36mYour Current Directory Is "$DIR
sleep 2
echo -e "Copying Files To /bin/Lazyfi..."
mkdir /bin/Lazyfi
cp -r "$DIR"/* /bin/Lazyfi
sleep 2
echo -e "Done!"
sleep 2
clear
echo -e "Fixing Permissions..."
chmod +x /bin/Lazyfi/lazy
sleep 2
clear
echo -e "Adding Lazyfi To Path So It Can Be Accessed From Anywhere..."
export PATH=/bin/Lazyfi:$PATH
sleep 2
echo "export PATH=/bin/Lazyfi:$PATH" >> ~/.bashrc
sleep 2
clear
echo -e "Cleaning up..."
cd
cd /bin/Lazyfi/
rm -r install.sh
sleep 2
clear
echo -e "Installation Completed Succesfully..."
sleep 2
gnome-terminal -- bash -c "lazy"
