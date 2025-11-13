cp -rp . /opt/minecraft
cp minecraft.service /etc/systemd/system
systemctl daemon-reload
systemctl enable minecraft
systemctl start minecraft
