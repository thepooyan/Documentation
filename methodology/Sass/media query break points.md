## variables
```scss
$LGscreen: 1200px;
$screen: 992px;
$tablet: 768px;
$SMtablet: 600px;
$mobile: 480px;
```
## orientation: screen first
```scss
/* Extra large devices (large laptops and desktops, 1200px till 993 and down) */
@media (max-width: 1200px) {}
/* Large devices (laptops/desktops, 992px till 769 and down) */
@media (max-width: 992px) {}
/* Medium devices (landscape tablets, 768px till 601 and down) */
@media (max-width: 768px) {}
/* Small devices (portrait tablets and large phones, 600px till 481 and down) */
@media (max-width: 600px) {}
/* Extra small devices (phones, 480px till 320 and down) */
@media (max-width: 480px) {}

```


# or

- 320px — 480px: Mobile devices
-   481px — 768px: iPads, Tablets
-   769px — 1024px: Small screens, laptops
-   1025px — 1200px: Desktops, large screens
-   1201px and more —  Extra large screens, TV

## orientation: screen first
```css
// mobile (320 to 481)
@media (max-width: 481px) {}
// tablet (481 to 769)
@media (max-width: 769px) {}
@media (max-width: 1025px) {}
@media (max-width: 1200px) {}
```
## orientation: mobile first

