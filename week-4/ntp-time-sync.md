# ⏱️ Set and Synchronize System Time

## 🕓 Set Timezone

```bash
timedatectl list-timezones
sudo timedatectl set-timezone Asia/Kolkata
```

## 🔄 Enable Time Sync

```bash
sudo apt install systemd-timesyncd
sudo timedatectl set-ntp true
timedatectl
```

## ⚙ Change NTP Servers

Edit `/etc/systemd/timesyncd.conf`:

```
[Time]
NTP=0.pool.ntp.org 1.pool.ntp.org
```

Restart and verify:

```bash
sudo systemctl restart systemd-timesyncd
timedatectl show-timesync
timedatectl timesync-status
```

---
