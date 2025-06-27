
# SELinux — File and Process Contexts

SELinux applies **security contexts** to both files and processes to enforce fine-grained access control.

## 📄 File Contexts

Each file is labeled with a context:

```bash
ls -lZ
```

Example output:

```
unconfined_u:object_r:user_home_t:s0
```

Fields:
- User (e.g., `unconfined_u`)
- Role (e.g., `object_r`)
- Type (e.g., `user_home_t`)
- Level (e.g., `s0`)

## ⚙️ Process Contexts

Processes also run in specific SELinux domains:

```bash
ps -eZ
```

View SSH daemon’s domain:

```bash
ps -eZ | grep sshd
ls -Z /usr/sbin/sshd
```

## 🧑 User Contexts

Check current user’s SELinux context:

```bash
id -Z
```

Map login users to SELinux users:

```bash
sudo semanage login -l
sudo semanage user -l
```

## 🔐 Enforcement Status

```bash
getenforce
```

Values: `Enforcing`, `Permissive`, or `Disabled`
