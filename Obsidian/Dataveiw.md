Types: LIST, table ,task calendar;

syntax:
```
[Type] [return value]
FROM [source]
WHERE [condition]
```

*for table return value can be more than one, but not for list

[return value]: > tag as "alias" || tag1, tag2, ...
[source]: > can be foler name, or #tag
#programing 



```dataview
table learned as "Did i learn it?", cli 
from "Front-End"
where cli != true and endpoint = true
sort file.name asc
```
# this is the list of everthing programing related!
```dataview
list
where contains(tags, "programing")
```
```dataview
table from #programing 
where date >= date(2022-01-01)
sort date
```
*** sort can be used with any tag instead of filenames