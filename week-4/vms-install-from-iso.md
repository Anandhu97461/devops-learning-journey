# Installing an OS on VM via ISO

```bash
virt-install --osinfo debian12 --name debian1 --memory 1024 --vcpus 1 --disk size=10 --location /path/to/debian.iso --graphics none --extra-args "console=ttyS0"
```

## 🔹 Notes

- `--location` can point to ISO or net installer URL.
- `--extra-args` is needed for non-GUI install.
- Press `Ctrl + ]` to exit the console.