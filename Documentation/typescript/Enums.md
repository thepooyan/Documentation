---
search: the type of a variable can be an enum?
---
```ts
const enum Age { Pooyan=20, Amin=21, akbar=52 };
```

creates a set of related constants. accessible like this:
```ts
clg(Age.Pooyan)
```

*the const keyword is **optional** but will generate better js code*

the type of a variable can be an enum?