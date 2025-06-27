# 👥 LDAP Integration and Network Configuration

## 🧑‍💼 Configure the System to Use LDAP

- Install required packages:
  ```bash
  sudo apt update && sudo apt install libnss-ldapd
  ```

- LDAP Server URI: `ldap://<LDAP_IP>/`
- Base DN: `dc=kodekloud,dc=com`

- Check NSS config:
  ```text
  passwd: files systemd ldap
  group:  files systemd ldap
  ```

- View LDAP users:
  ```bash
  getent passwd --service ldap
  ```

## 🏡 Automate Home Directory Creation with PAM

- Enable via:
  ```bash
  sudo pam-auth-update
  ```

- Select: “Create home directory on login”

## 🌐 IPv4/IPv6 Networking and Hostname Resolution

- Show interfaces:
  ```bash
  ip a
  ```

- Bring up interface:
  ```bash
  sudo ip link set dev enp0s8 up
  ```

- Add static IPs:
  ```bash
  sudo ip addr add 10.0.0.40/24 dev enp0s8
  ```

- View hostname mappings:
  ```bash
  cat /etc/hosts
  ```

- Add custom hostname:
  ```text
  127.0.123.123 dbserver
  ```

## ⚙️ Persistent Config with Netplan

- Config file: `/etc/netplan/*.yaml`
- Example:
  ```yaml
  network:
    ethernets:
      enp0s8:
        dhcp4: false
        addresses: [10.0.0.9/24]
        nameservers:
          addresses: [8.8.8.8, 1.1.1.1]
    version: 2
  ```

- Apply:
  ```bash
  sudo netplan apply
  ```
