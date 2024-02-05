```xml
<?xml version = "1.0" encoding = "UTF-8"?>
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <!-- Define a simple bean -->
    <bean name="exampleBean" class="com.example.ExampleBean">
        <property name="message" value="Hello, Spring!"/>
    </bean>

    <!-- Setter injection -->
    <bean name="dependentBean" class="com.example.DependentBean">
        <property name="exampleBean" ref="exampleBean"/>
    </bean>

    <!-- Constructor injection -->
    <bean name="dependentBean" class="com.example.DependentBean">
        <constructor-arg value="12"
						 ref="bean1" <!-- use value or ref -->
						 type="java.lang.String"
						 name="fieldName"
						 inex="1" />
    </bean>

</beans>
```