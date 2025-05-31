# Install LocalSend for local file sharing
cd /tmp
CURSOR_LINK=$(curl -s -X POST -H "Content-Type: application/json" -d '{"platform": 5}' "https://www.cursor.com/api/dashboard/get-download-link" | jq -r '.cachedDownloadLink')
wget -O cursor.AppImage $CURSOR_LINK
chmod +x cursor.AppImage
mkdir -p ~/.local/bin
mv cursor.AppImage ~/.local/bin/cursor
cd -
