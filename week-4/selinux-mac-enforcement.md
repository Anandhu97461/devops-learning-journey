
# Create and Enforce MAC Using SELinux

SELinux allows enforcing Mandatory Access Control through labeled files and processes. Here’s how to install, activate, and create custom policies.

## 🛑 Disable AppArmor (Ubuntu)

```bash
sudo systemctl stop apparmor.service
```

## 🛠️ Install SELinux Tools

```bash
sudo apt install selinux-basics selinux-policy-default auditd policycoreutils
```

## 🔛 Activate SELinux

```bash
sudo selinux-activate
sudo reboot
```

## 📝 Boot into Permissive Mode

Start by allowing actions and logging them for policy generation.

```bash
sudo audit2allow --all -M mymodule
sudo semodule -i mymodule.pp
```

## 🔐 Enforce Mode

```bash
sudo setenforce 1
sudo vim /etc/selinux/config  # change SELINUX=permissive to enforcing
```

## 🔧 Restore/Fix Contexts

```bash
sudo restorecon -R /var/www/
sudo chcon -t httpd_sys_content_t /var/www/index.html
```

## 📁 Permanent Label Mapping

```bash
sudo semanage fcontext -a -t httpd_sys_content_t "/web(/.*)?"
sudo restorecon -Rv /web
```

## 📊 Booleans and Port Types

```bash
getsebool -a | grep virt_use_nfs
sudo setsebool virt_use_nfs 1

sudo semanage port --add --type ssh_port_t --proto tcp 2222
sudo semanage port --delete --type ssh_port_t --proto tcp 2222
```

SELinux gives incredible control, but building policies involves investigating audit logs and carefully labeling domains.
