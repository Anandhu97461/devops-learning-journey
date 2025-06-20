# Search File Using Grep

## 🧪 Basic Syntax:
```bash
grep 'pattern' file.txt
```

Options:
-i: case insensitive

-r: recursive

-w: whole word

-v: invert match

-o: show only matching text

Examples:
```bash
grep -i 'password' /etc/ssh/sshd_config
grep -rw 'PermitRootLogin' /etc/
```

🔁 Recursive Search
```
grep -ri 'port' /etc/
```

🔐 Root Files
```
sudo grep -ri 'confidential' /etc/ --color
```

---