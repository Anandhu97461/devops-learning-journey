# Linux File Systems & Navigation - Week 2

## Navigation

- `cd`, `ls -l`, `pwd`, `mkdir`, `rm`, `touch`, `cp`, `mv`
- Absolute path vs relative path
- `cd -` switches to previous directory

## Links

- **Hard links**: Point to same inode
- **Soft links**: Symbolic reference
- Commands:
  ```bash
  ln file1 file2     # hard link
  ln -s file1 file2  # soft link

## Personal Exploration

Had fun learning man sections, apropos, and seeing man man. Discovering that soft links break when original file is deleted.