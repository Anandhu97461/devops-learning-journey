# 📡 Managing Network Services and Listening Ports

## 🔍 Check Listening Services with `ss`

```bash
sudo ss -ltunp
```

- `-l` = listening
- `-t` = TCP
- `-u` = UDP
- `-n` = numeric ports
- `-p` = show process

### Sample Output
```text
tcp LISTEN 0 128 0.0.0.0:22 users:(("sshd",pid=679,fd=3))
tcp LISTEN 0 80 127.0.0.1:3306 users:(("mariadb",pid=738,fd=20))
```

## 🔁 Manage Services with `systemctl`

```bash
sudo systemctl status ssh
sudo systemctl stop mariadb
sudo systemctl disable mariadb
```

## 🔬 Inspect Processes and Ports

```bash
ps 679
sudo lsof -p 679
```

## 📊 Legacy: `netstat`

```bash
sudo netstat -ltunp
```
