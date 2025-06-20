# Archive, Backup, Compress, Unpack

## 🎒 Tar:
```
tar -cf archive.tar folder/
tar -xf archive.tar

🗜 Compression:
```bash
gzip file.txt
bzip2 file.txt
xz file.txt

📦 Combined:
```bash
tar -czf archive.tar.gz folder/

🔄 Rsync:
```bash
rsync -av /src/ user@ip:/dest/

🧱 dd:
```bash
sudo dd if=/dev/sda of=backup.raw bs=1M status=progress


---
