# 🛡️ User Privileges and Resource Limits

## 🔐 Manage User Privileges with `sudo` and `sudoers`

- Users in the `sudo` group can execute admin commands using `sudo`.
- Add user to sudo group:
  ```bash
  sudo gpasswd -a trinity sudo
  ```

- Fine-tune sudo access using `/etc/sudoers` via `visudo`:
  ```bash
  sudo visudo
  ```

  Example:
  ```text
  trinity   ALL=(ALL) ALL
  %developers   ALL=(ALL) ALL
  ```

- Restrict user to specific commands:
  ```text
  trinity   ALL=(ALL) /usr/bin/ls, /usr/bin/stat
  ```

## 🧠 Configure User Resource Limits

- Configured in `/etc/security/limits.conf`
- Format:
  ```text
  <domain> <type> <item> <value>
  ```

  Example:
  ```text
  trinity   soft   nproc   10
  trinity   hard   nproc   20
  *         soft   cpu     5
  ```

- `soft` = user-adjustable
- `hard` = upper limit

- View current limits:
  ```bash
  ulimit -a
  ```

- Set limit (only down within session):
  ```bash
  ulimit -u 5000
  ```
