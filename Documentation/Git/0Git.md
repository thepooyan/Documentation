export a file in another branch without checking out to the branch
```bash
git show branch:file > exported_file
```

show a file in a diffrenct commit or branch
```bash
git show branch:file
```

restore a file from a specific commit:
```bash
git checkout HEAD^ -- filepath
```

[[Reseting merge commit]] 

[[History of a file]] 

```bash
git commit --amend --no-edit //keep the msg
```

[[git stash]] 

```
git logs --graph --decorate
```
[[Git reminder]]