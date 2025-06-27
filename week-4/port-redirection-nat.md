# 🌐 Port Redirection and Network Address Translation (NAT)

## 📤 Enable IP Forwarding

```bash
sudo vim /etc/sysctl.d/99-sysctl.conf
# Uncomment: net.ipv4.ip_forward=1
sudo sysctl --system
```

## 🎯 Port Forward with iptables

```bash
sudo iptables -t nat -A PREROUTING -i enp1s0 -s 10.0.0.0/24 -p tcp --dport 8080 -j DNAT --to-destination 192.168.0.5:80
sudo iptables -t nat -A POSTROUTING -s 10.0.0.0/24 -o enp6s0 -j MASQUERADE
```

## 💾 Persist Rules

```bash
sudo apt install iptables-persistent
sudo netfilter-persistent save
```

## 🔁 View or Reset

```bash
sudo iptables -L -t nat
sudo nft list ruleset
```

---
