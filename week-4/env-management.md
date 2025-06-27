# Manage System-Wide Environment Profiles

## 🔹 View Environment Variables

```bash
printenv
echo $HOME
```

## 🔹 Set Persistent Variable

```bash
sudo vim /etc/environment
# Add: MY_VAR=value
```

## 🔹 Login Script

```bash
sudo vim /etc/profile.d/lastlogin.sh
echo "Last login:" > $HOME/lastlogin
date >> $HOME/lastlogin
```