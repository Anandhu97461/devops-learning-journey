# Input Output Redirection

## 🚀 Operators:
- `>`: redirect stdout
- `>>`: append
- `<`: stdin
- `2>`: stderr
- `2>&1`: stderr + stdout

## 🔄 Here Docs:
```bash
cat <<EOF
Line 1
Line 2
EOF

🔄 Here Strings:
```bash
bc <<< "2+2"

🔀 Pipe:
```bash
grep -v '^#' file | sort | column -t

---