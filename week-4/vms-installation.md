# Create and Boot a Virtual Machine (Cloud Image)

## 🔹 Download and Prepare

```bash
wget https://cloud-images.ubuntu.com/.../ubuntu-24.04-minimal-cloudimg-amd64.img
qemu-img resize ubuntu-24.04-minimal-cloudimg-amd64.img 10G
sudo cp ubuntu-24.04-minimal-cloudimg-amd64.img /var/lib/libvirt/images/
```

## 🔹 Create VM with `virt-install`

```bash
virt-install --osinfo ubuntu24.04 --name ubunt1 --memory 1024 --vcpus 1 --import --disk /var/lib/libvirt/images/ubuntu.img --graphics none --cloud-init root-password-generate=on
```

## 🔹 Access

```bash
virsh console ubunt1
```