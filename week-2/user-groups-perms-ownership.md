# Linux Permissions & Ownership - Week 2

## Users & Groups

- View groups: `groups`, `id`
- Change ownership: `chown`, `chgrp`

## Permissions

- `r`, `w`, `x` for owner/group/others
- Change using `chmod`, e.g.,
  ```bash
  chmod u+x file
  chmod 755 file

## Special Permissions

- SUID, SGID, Sticky bit
- View with: ls -l, stat
- Set with numeric prefix (e.g., chmod 4755 file)