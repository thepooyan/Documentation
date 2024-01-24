the dependency can be found in MVIN repository with the label: `log4j core`


config file:
```log4j2.xml
<?xml version="1.0" encoding="UTF-8"?>
<Configuration status="warn">
    <Appenders>
        <Console name="Console" target="SYSTEM_OUT">
            <PatternLayout pattern="%d{yyyy-MM-dd HH:mm:ss} %-5p %c{1}:%L - %m%n" />
        </Console>
    </Appenders>
    <Loggers>
        <Root level="error">
            <AppenderRef ref="Console" />
        </Root>
    </Loggers>
</Configuration>
```

- status: fatal, warn, all, debug, trace,
- target: SYSTEM_ERR (red)
- pattern layout: [[patter layout]]
- root level => change level of logs that are shown
- appenderRef => refrences name property of one appender
- status property of configuration tag references log level of log4j itself 