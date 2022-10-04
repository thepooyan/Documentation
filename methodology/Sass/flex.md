```scss
@mixin flex($just, $align, $dir: row, $gap: 0) {
    display: flex;

    @if $just == c {
        $just: center;
    }

    @if $just == s {
        $just: flex-start;
    }

    @if $just == e {
        $just: flex-end;
    }

    @if $just == sa {
        $just: space-around;
    }

    @if $just == sb {
        $just: space-between;
    }

    @if $just == se {
        $just: space-evenly;
    }

    @if $align == c {
        $align: center;
    }

    @if $align == s {
        $align: flex-start;
    }

    @if $align == e {
        $align: flex-end;
    }

    justify-content: $just;
    align-items: $align;
    flex-direction: $dir;
    gap: $gap;
}
```