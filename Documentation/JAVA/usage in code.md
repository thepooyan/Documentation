define the logger as a property of the class:
```java
static final Logger logger = LogManager.getLogger("logger-name");
```

then use anywhere:
```
logger.trace("my massage!!");
logger.warn("my massage!!");
logger.error("my massage!!");
logger.fatal("my massage!!");
```