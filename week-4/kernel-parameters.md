
# Change Kernel Runtime Parameters — Persistent & Non-Persistent

Linux allows modification of kernel runtime parameters using the `sysctl` interface. These parameters control low-level behaviors, such as memory usage, networking, and system limits.

## 🔍 View Current Parameters

```bash
sudo sysctl -a
```

Filter by keyword:

```bash
sysctl -a | grep vm
```

## ⚙️ Non-Persistent Changes

Modify parameters for the current session only:

```bash
sudo sysctl -w vm.swappiness=20
```

These changes are temporary and will be lost after reboot.

## 🗂️ Persistent Changes

To persist across reboots, create a config file:

```bash
echo "vm.swappiness=20" | sudo tee /etc/sysctl.d/swap-tweak.conf
sudo sysctl -p /etc/sysctl.d/swap-tweak.conf
```

Avoid editing `/etc/sysctl.conf` directly for custom settings.

## ✅ Summary

| Scope           | Method                                    | Command Example                                      |
|----------------|-------------------------------------------|------------------------------------------------------|
| Non-Persistent | Temporary using sysctl                    | `sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1`|
| Persistent     | Config file under `/etc/sysctl.d/`        | `echo "vm.swappiness=20" > /etc/sysctl.d/xyz.conf`   |
