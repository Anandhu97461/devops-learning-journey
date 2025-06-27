# Managing LVM Storage

## Create PVs
```bash
sudo pvcreate /dev/vdc /dev/vdd
```

## Create VG
```bash
sudo vgcreate volume1 /dev/vdc /dev/vdd
```

## Create LV
```bash
sudo lvcreate -L 3G -n website_files volume1
```

## Format and Mount
```bash
sudo mkfs.ext4 /dev/volume1/website_files
sudo mkdir /website
sudo mount /dev/volume1/website_files /website
```
