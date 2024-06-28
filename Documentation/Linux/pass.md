# Install:
```bash
sudo pacman -S pass
```

# Config:
```bash
gpg --gen-key

gpg --edit-key [KEY]
> expire
> 0
> save

```
# Usage:
```bash
pass insert [NAMESPACE?]/[NAME]
pass generate [NAME]
pass
pass find [SEARCH]
pass edit [NAME]
pass grep [SERACH]
pass -c [NAME]
pass rm [NAME]
```

# Notes:
- EVERYTHING is encrypted
- prefix git with pass to access git commands on it


# Related:
[[gpg]]