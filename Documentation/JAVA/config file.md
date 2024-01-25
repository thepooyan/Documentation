log4j2.xml:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<Configuration status="warn" monitorInterval="5">
    <Appenders>
        <Console name="Console" target="SYSTEM_OUT">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss} %-5p %c{1}:%L - %m%n" />
        </Console>
		<RollingFile>
			  ...
		</RollingFile>
		<JDBC>
			  ...
		</JDBC>
    </Appenders>
    <Loggers>
		<logger name="my logger" level="info" additivity="false">
            <AppenderRef ref="Console" />
		</logger>
        <Root level="error">
            <AppenderRef ref="Console" />
        </Root>
    </Loggers>
</Configuration>
```

- status: fatal, warn, all, debug, trace,
- target: SYSTEM_ERR (red)
- pattern layout: [[patter layout (variables)]]
- root level => change level of logs that are shown
- appenderRef => refrences name property of one appender
- status property of configuration tag references log level of log4j itself 
- additivity => has to always be there when you're defining a new logger
[[JDBC]]
[[Rolling file]]