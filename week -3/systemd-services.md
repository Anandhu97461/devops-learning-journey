# Create Custom systemd Services

## 📝 Example Service Unit:
```ini
# /etc/systemd/system/myscript.service
[Unit]
Description=My Custom Bash Script
After=network.target

[Service]
ExecStart=/usr/local/bin/myscript.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target

## 🔧 Manage Service:
```bash
systemctl daemon-reexec
systemctl enable myscript
systemctl start myscript
systemctl status myscript

Use journalctl -u myscript to check logs.

---