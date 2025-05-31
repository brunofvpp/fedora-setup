set -e

ascii_art='    ________________  ____  ____  ___       _____ ______________  ______ 
   / ____/ ____/ __ \/ __ \/ __ \/   |     / ___// ____/_  __/ / / / __ \
  / /_  / __/ / / / / / / / /_/ / /| |     \__ \/ __/   / / / / / / /_/ /
 / __/ / /___/ /_/ / /_/ / _, _/ ___ |    ___/ / /___  / / / /_/ / ____/ 
/_/   /_____/_____/\____/_/ |_/_/  |_|   /____/_____/ /_/  \____/_/      
                                                                         '

echo -e "$ascii_art"
echo "=> Omakub-fd is for fresh Fedora 42+ installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf update -y >/dev/null
sudo dnf install -y git >/dev/null

echo "Cloning Omakube-fd..."
rm -rf ~/.local/share/omakub-fd
git clone https://github.com/brunofvpp/omakub-fd.git ~/.local/share/omakub-fd >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
	cd ~/.local/share/omakub-fd
	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub-fd/install.sh
