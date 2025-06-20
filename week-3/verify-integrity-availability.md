# Verify Integrity and Availability of Resources

## 🔐 File Checksums:
```bash
md5sum filename
sha256sum filename
```

Compare with expected hash to verify integrity.

## 📶 Check Disk & Memory:
```bash
df -h
du -sh *
free -h
```

## 👷 Process Availability:
```bash
pgrep nginx
systemctl status apache2
```

---