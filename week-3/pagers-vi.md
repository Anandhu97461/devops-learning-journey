# Pagers and Vim

## 📰 Pagers

### `less`
- Scroll up/down with arrows or PageUp/PageDown
- Search with `/pattern`, go to next match with `n`, previous with `N`
- Quit with `q`

### `more`
- Simpler pager, use `Space` to scroll
- `Enter` scrolls one line
- `q` to quit

Used on files like `/var/log/syslog`.

---

## ✍️ Vim

### Modes:
- Normal: navigation and commands
- Insert: start with `i`
- Visual: for selecting
- Command: `:wq`, `:q!`, etc.

### Navigation:
- `h`, `j`, `k`, `l`
- `:10`: go to line 10
- `/word`: search
- `n`: next match

### Editing:
- `dd`: delete line
- `yy`: copy line
- `p`: paste
- `u`: undo
- `Ctrl+r`: redo
