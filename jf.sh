sudo apt update && sudo apt upgrade -y
sudo apt install apt-transport-https -y
wget -O - https://repo.jellyfin.org/debian/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/debian $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin samba samba-common-bin -y
sudo cp smb.conf /etc/samba/smb.conf
sudo smbpasswd -a pi
sudo systemctl restart smbd
