```scss
$orientation: screen;
$screen: 1200px;
$laptop: 992px;
$tablet: 698px;
$mobile: 480px;
  
@function orientation() {
    @if ($orientation == 'screen') {
        @return 'max-width';
    }
    @if ($orientation == 'mobile') {
        @return 'min-width'
    }
}
  
@mixin media($arg) {
    @media (orientation(): $arg) {
        @content
    }
}
  
@include media($mobile) {
    div {
        color: red;
    }
}
```