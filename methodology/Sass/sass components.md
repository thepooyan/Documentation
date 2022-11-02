## sass-components
1. each component goes to a diffrent sass file, as follows:
```scss
.componentName {

	// general classes

	//structural classes

	//media queries

}
```

so the css is completely componental, components should be reusable anywhere. all needed to do is to import the sass-component in the MAIN SASS FILES.

these components also have [[scalability]], [[variable based initials]], [[diffrent states]] and fall under one of below categories:
1. fixed elements
2. picture elements
3. dynamic elements
4. a hibrid of picture and dynamic elements

usage of dynamic elements should be avoided as much as possible, fixed elements are the perfect type and picture elements should be used in second place.