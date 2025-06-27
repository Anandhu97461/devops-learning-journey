# Filesystem Mount Options & Remote Filesystems

## Remount Read-Only
```bash
sudo mount -o remount,ro /mnt
```

## Use NFS
### Server
Edit `/etc/exports`:
```
/home 10.0.0.0/24(ro,sync,no_subtree_check)
```
```bash
sudo exportfs -ra
```
### Client
```bash
sudo mount server:/home /mnt
```

## Use NBD
```bash
sudo apt install nbd-server nbd-client
sudo modprobe nbd
sudo nbd-client 127.0.0.1 -N partition2
sudo mount /dev/nbd0 /mnt
```
