# 🔐 Configure SSH Servers and Clients

## 🛠️ SSH Server: /etc/ssh/sshd_config

```bash
PermitRootLogin no
PasswordAuthentication no
AddressFamily inet
ListenAddress 10.11.12.9
```

Reload config:

```bash
sudo systemctl reload ssh
```

## 🎯 Match User Config

```conf
Match User aaron
    PasswordAuthentication yes
```

## 💻 SSH Client Config

```bash
vim ~/.ssh/config

Host ubuntu-vm
  HostName 10.0.0.186
  User jeremy
```

Set permission:

```bash
chmod 600 ~/.ssh/config
```

## 🔑 Generate and Copy SSH Key

```bash
ssh-keygen
ssh-copy-id jeremy@10.0.0.173
```

Remove known host entry:

```bash
ssh-keygen -R 10.0.0.251
```

---
