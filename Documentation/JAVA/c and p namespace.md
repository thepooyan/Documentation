```xml
<!-- importing c and p namespaces -->
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	   xmlns:p="http://www.springframework.org/schema/p"
	   xmlns:c="http://www.springframework.org/schema/c"
       xsi:schemaLocation="http://www.springframework.org/schema/beans
                           http://www.springframework.org/schema/beans/spring-beans.xsd">

    <!-- Setter injection -->
    <bean name="dependentBean" class="com.example.DependentBean"
		  p:bean2-ref="bean2"
		  p:number="100"/>

    <!-- Constructor injection -->
    <bean name="dependentBean" class="com.example.DependentBean"
		  c:bean2-ref="bean2"
		  c:number="100"/>

</beans>
```