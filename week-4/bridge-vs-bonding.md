# 🔗 Configure Bridge and Bonding Devices (Theory + Demo)

## 🧠 What’s the Difference?

- **Bridging** connects two interfaces into a **virtual switch**. Each interface connects to a separate network. The bridge (e.g., br0) allows devices on both sides to talk like they’re in the same LAN.
- **Bonding** combines two interfaces into a single logical unit (e.g., bond0). It increases redundancy or bandwidth. It’s used when both interfaces connect to the **same network**.

## 🧪 Netplan Bridge Configuration

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s8: { dhcp4: no }
    enp0s9: { dhcp4: no }
  bridges:
    br0:
      dhcp4: yes
      interfaces: [enp0s8, enp0s9]
```

## 🔧 Netplan Bonding Configuration

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s8: { dhcp4: no }
    enp0s9: { dhcp4: no }
  bonds:
    bond0:
      dhcp4: yes
      interfaces: [enp0s8, enp0s9]
      parameters:
        mode: active-backup
        primary: enp0s8
        mii-monitor-interval: 100
```

## ✅ Commands

```bash
sudo netplan apply
ip -c link
cat /proc/net/bonding/bond0
```

---
