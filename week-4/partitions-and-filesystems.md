# Managing Partitions and Filesystems

## List, Create, Delete, Modify Partitions
Use `lsblk`, `fdisk`, and `parted` to view and manage partitions:
```bash
lsblk
sudo fdisk /dev/vdb
```

## Configure and Manage Swap Space
### Swap File
```bash
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap defaults 0 0' | sudo tee -a /etc/fstab
```

## Create and Configure File Systems
```bash
sudo mkfs.ext4 /dev/sdb1
sudo mkfs.xfs /dev/sdb2
sudo mkdir /part1 /part2
sudo mount /dev/sdb1 /part1
sudo mount /dev/sdb2 /part2
```

## Configure Auto Mount (fstab)
```bash
echo '/dev/sdb1 /part1 ext4 defaults 0 2' | sudo tee -a /etc/fstab
echo '/dev/sdb2 /part2 xfs defaults 0 2' | sudo tee -a /etc/fstab
```
