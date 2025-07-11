\# Advanced Bash Scripting Notes (Week 6)



\## Declare \& Variable Flags

\- `declare -i var=5`: force integer

\- `declare -r`: readonly

\- `declare -u/-l`: convert to uppercase/lowercase



\## Arrays

\- Indexed: `declare -a`

\- Associative: `declare -A`

\- Append: `arr+=("item")`

\- Slice: `${arr\[@]:start:length}`

\- Quoted loop: `for i in "${arr\[@]}"`



\## Strict Mode

```bash

set -euo pipefail

```



\## File Descriptors

`exec 3<>file.txt`: open FD 3 for read/write



`read -n 4 <\&3`, `echo "." >\&3`



\## AWK

awk '{ print $2 }' file.txt



awk -F "|" -v x=65000 '$7>=x { print $2 }'



NR, NF, $NF, FILENAME



\## SED

Print: sed -n '2p'



Delete: sed '3,5d'



Substitute: sed 's/old/new/g'

