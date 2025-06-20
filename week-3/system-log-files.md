# Locate and Analyze System Log Files

## 📁 Common Log Locations:
- `/var/log/syslog`
- `/var/log/messages`
- `/var/log/auth.log`

## 🔍 Journalctl:
```bash
journalctl
journalctl -u ssh
journalctl --since "1 hour ago"
journalctl -xe
```

Use grep or less to filter.

---