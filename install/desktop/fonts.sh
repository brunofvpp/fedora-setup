mkdir -p ~/.local/share/fonts
cd /tmp
wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
unzip Fira_Code_v6.2.zip -d FiraCode
cp FiraCode/*.ttf ~/.local/share/fonts
rm -rf Fira_Code_v6.2.zip FiraCode
fc-cache
cd -
