# Manage and Configure Virtual Machines

## 🔹 Using `virsh` for Virtualization

```bash
sudo apt install virt-manager
```

## 🔹 Define a Basic VM

```xml
<domain type="qemu">
  <name>TestMachine</name>
  <memory unit="GiB">1</memory>
  <vcpu>1</vcpu>
  <os>
    <type arch="x86_64">hvm</type>
  </os>
</domain>
```

```bash
virsh define testmachine.xml
virsh start TestMachine
virsh shutdown TestMachine
virsh destroy TestMachine
virsh undefine TestMachine
```

## 🔹 Modify Resources

```bash
virsh setvcpus TestMachine 2 --config --maximum
virsh setmem TestMachine 2048M --config
```