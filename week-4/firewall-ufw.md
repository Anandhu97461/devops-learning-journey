# 🔥 Configure Packet Filtering Firewall (UFW)

## 🧱 Enable UFW and Allow SSH

```bash
sudo ufw allow 22
sudo ufw enable
sudo ufw status verbose
```

## 📶 Restrict SSH by IP

```bash
sudo ufw allow from 10.0.0.192 to any port 22
sudo ufw delete allow 22
```

## 🎯 Allow Subnet, Block Specific IP

```bash
sudo ufw allow from 10.0.0.0/24 to any port 22
sudo ufw insert 1 deny from 10.0.0.37
```

## 🌍 Block Outgoing IP on Interface

```bash
sudo ufw deny out on enp0s3 to 8.8.8.8
```

## ⚙ Complex Rules

```bash
sudo ufw allow in on enp0s3 from 10.0.0.192 to 10.0.0.100 proto tcp
sudo ufw allow out on enp0s3 from 10.0.0.100 to 10.0.0.192 proto tcp
```

---
