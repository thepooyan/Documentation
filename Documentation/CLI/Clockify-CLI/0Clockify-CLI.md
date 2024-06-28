---
learned: false
CLI: true
endPoint: true
---
```bash
	clock is alias for clockify-cli
	
	clock in (input a new time entry)(interactive)
	clock out (stop the current timer)
	clock out --when 12:34:00 (stop the current timer at specifed time)
	
	clock clone last (clone the last used timer)
	
	clock show (shows the running entry)
	**IF YOU RUN CLOCK IN WHILE ANOTHER ENTRY IS ON THE PROGRESS IT WILL AUTOMATICLY STOP THE RUNNING ONE**
	
	clock edit current (edit the running timer tags)
	
	clock manual -s "yesterday 17:50" -e "yesterday 18:00" -T meet -d 'About the Calendar'
	
	clock report (get the report for today)
	clock report this-month --duration-formatted -p cli (get this mounth total sum) (duration formatted sums it up) (don't know what the last one means :) )
	

```