```xml
<RollingFile
	name="rollingFile"
	fileName="logs/application.log"
	filePattern="logArchive/%d{HH-mm-dd}-%i.log.gz">

	<PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss} %-5p %c{1}:%L - %m%n" />
	<policies>
		<SizeBasedTriggeringPolicy size="1 kb"/>
		<TimeBasedTriggeringPolicy interval="2"/>
	</policies>
	<DefualtRolloverStrategy max="10"/>
	  
</RollingFile>
```

- file pattern: `%i` is index, add `gz` to compress (recommended)
- [[patter layout (variables)]]
- DefualtRolloverStrategy: max number of indexes to create and keep for archives
- trigger policy: how many chunks of data is in any log archive file (time or size or both)