## main sass files
The arrangement of main sass files should be based on the needs of site, numbers of pages and most importantly the way they are categorized and related to each other. and ALWAYS there is a `common.scss` file which includes general classes of the entire site that might be used anywhere.

for example: (the file system of a website with three diffrent sections)
-- indexStyle.scss
-- coursesStyle.scss
-- articlesStyle.scss
-- common.scss

each html page, based on the category it will fall under, will have `common.scss` styles first as BLOCKING styles, and the category style file itself (index, course or article) as async non blocking style.

inside common, aside from [[general classes that should be used everywhere]], styles of the page sections that will be visible at first sight will also be included. so that the CLS of the site decrease. and the file size should be as small as possible to speed up the site.

inside each of main sections files, components that are used on that section will be added, using the sass `import` rule.
and the glue that keeps the components together, that is either flex or grid or nothing.
so in this file we expect to see nothing but a bunch of `import` rules and some flex/grid definitions.