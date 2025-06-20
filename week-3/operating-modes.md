# Boot or Change System into Different Operating Modes

## 🎯 Runlevels/Targets:
- `graphical.target`: GUI
- `multi-user.target`: CLI
- `rescue.target`: maintenance (with login)
- `emergency.target`: single-user shell (no services)

## 🔄 Commands:
```bash
systemctl get-default
systemctl isolate rescue.target

Use systemctl set-default to change the boot default.

---