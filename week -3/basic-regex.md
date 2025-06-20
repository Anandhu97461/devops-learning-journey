# Analyze Text Using Basic Regular Expressions

## 🧩 Operators:
- `^`: start of line
- `$`: end of line
- `.`: any character
- `*`: 0 or more
- `[]`: character sets

### Examples:
```bash
grep '^#' /etc/login.defs       # lines starting with #
grep '[0-9]$' /etc/passwd       # lines ending with digit

---