[[render diagram.excalidraw]]
# server side rendering
***
- static rendering
gets rendered at **build time** which is the default
 ***
- dynamic rendering
gets rendered at **request time** and in **server**

good for when:
- a route has data that is personalized to the user 
- has information that can only be known at request time, such as cookies or the URL's search params.

*how to make a route dynamic*:
using [[dynamic functions]] and [[uncached data request]] 

| Dynamic Functions |	Data |	Route |
| --- | --- | --- | --- |
| No |	Cached |	Statically | Rendered |
|Yes|	Cached|	Dynamically| Rendered|
|No	Not| Cached	|Dynamically| Rendered|
|Yes|	Not Cached|	Dynamically| Rendered|

***
# client components
the e
```tsx
"use client"
```
