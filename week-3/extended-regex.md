# Extended Regular Expressions

## Syntax:
Use `grep -E` or `egrep`

## Examples:
```bash
egrep '0+' file.txt         # one or more zeros
egrep 'disable?d?' file     # match disable or disabled
egrep '/dev/[a-z]+[0-9]*' file
```

Repetitions:
{n}: exactly n times

{n,}: at least n

{,m}: up to m

---