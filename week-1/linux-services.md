# Linux Services - Week 1

## Managing Services

- `systemctl start servicename` → Start service.
- `systemctl stop servicename` → Stop service.
- `systemctl enable servicename` → Enable service on boot.
- `systemctl disable servicename` → Disable service on boot.
- `systemctl status servicename` → Check service status.

## Creating a Custom .service File

- File placed in `/etc/systemd/system/myapp.service`.

### Sample Structure:
Notes:
Services enable running apps in background / on boot.

I created a .service file to run a Python app as a systemd service.

Used ExecStart, ExecStartPre, ExecStartPost for advanced control.

```ini
[Unit]
Description=My Python App Service

[Service]
ExecStart=/usr/bin/python3 /path/to/app/main.py
Restart=always

[Install]
WantedBy=multi-user.target

