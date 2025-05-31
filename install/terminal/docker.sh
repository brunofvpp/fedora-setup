cd /tmp
sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
wget -qO docker-desktop.rpm "https://desktop.docker.com/linux/main/amd64/docker-desktop-x86_64-rhel.rpm"
sudo dnf install -y ./docker-desktop.rpm
rm docker-desktop.rpm
echo '{"log-driver":"json-file","log-opts":{"max-size":"10m","max-file":"5"}}' | sudo tee /etc/docker/daemon.json
cd -
