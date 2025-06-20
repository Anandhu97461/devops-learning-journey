# Compare and Manipulate File Content

This topic introduced me to powerful text-processing and comparison tools in Linux.

## 🔧 Tools Practiced

### `cat`, `tac`, `nl`, `head`, `tail`
- `cat file.txt`: view entire file
- `tac file.txt`: view file in reverse
- `head -n 10 file.txt`: view first 10 lines
- `tail -n 10 file.txt`: view last 10 lines

### `cut`, `paste`
- `cut -d':' -f1 /etc/passwd`: extract first field using `:` delimiter
- `paste file1 file2`: merge lines side-by-side

### `sort`, `uniq`
- `sort file.txt`: sort lines
- `sort file.txt | uniq`: remove duplicates
- `uniq -c file.txt`: show count of duplicates

### `diff`, `cmp`, `comm`
- `diff file1 file2`: show line-by-line differences
- `cmp file1 file2`: byte-by-byte comparison
- `comm file1 file2`: common lines (sorted input)

### `wc`
- `wc -l file.txt`: line count
- `wc -w file.txt`: word count

These tools helped me analyze large files quickly and manipulate structured data easily.
