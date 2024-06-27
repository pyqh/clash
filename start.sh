sudo systemctl stop systemd-resolved
sudo systemctl disable systemd-resolved

cat <<EOF | sudo tee /etc/systemd/system/clash.service
[Unit]
Description=Clash daemon
After=network.target

[Service]
Type=simple
Restart=always
ExecStart=/usr/local/bin/clash -d /usr/local/etc/clash

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl enable clash
sudo systemctl start clash
