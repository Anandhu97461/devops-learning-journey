# File Searching with `find` - Week 2

## Key Options

- Name: `-name`, `-iname`
- Size: `-size`, `+512k`, `-100M`
- Time: `-mmin`, `-mtime`, `-cmin`, `-ctime`
- Permissions: `-perm`, `/`, `-`, `=`

## Examples

```bash
find / -name "*.conf"
find /var -size +100M
find . -mmin -10
find . -perm 600