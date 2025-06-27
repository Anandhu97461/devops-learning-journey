# Manage Template User Environment

## 🔹 What is /etc/skel?

Files in `/etc/skel` are copied to new user's home directory.

## 🔹 Add Default README

```bash
sudo vim /etc/skel/README
# Add a message like "Avoid CPU usage from 8AM to 10PM"
```

## 🔹 Modify .bashrc for All New Users

```bash
sudo vim /etc/skel/.bashrc
PATH="$HOME/.local/bin:$HOME/bin:/opt/bin:$PATH"
```