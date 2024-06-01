file gets created >
1. get's written to disc
2. an Inode is created for it
3. a file is created for it

# what's Inode
> Indode: (index node) contains:
> file size
> owner
> permissions
> points to the actual data at disc
> number of links

# Soft links
- if the file get's deleted it is useless
- size is small

# Hard link
Points to the same Inode as the original file, file size is same as original
- if original is deleted hard link will remain
- if one hard link get's modified, all the them will change (they all point to the **SAME** file)
- can't have hard links outside of local hard drive, or other partitions \ networks

# See:
[[Creating links]]