# Advanced Filesystem Permissions

## ACLs
```bash
sudo setfacl -m u:john:rw file.txt
getfacl file.txt
```

## File Attributes
### Append Only
```bash
sudo chattr +a file.txt
```
### Immutable
```bash
sudo chattr +i file.txt
lsattr file.txt
```
