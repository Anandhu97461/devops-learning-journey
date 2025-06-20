# Manage Startup Process and Services

## ⚙️ systemd:
```bash
systemctl start nginx
systemctl stop nginx
systemctl enable nginx
systemctl disable nginx
```

## 🔍 Logs:
```bash
journalctl -u nginx
journalctl --since "2 hours ago"
```

## 📦 Target Units:
```bash
systemctl get-default
systemctl set-default multi-user.target
```

---