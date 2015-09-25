# Arithmetic Expressions

- Arithmetic expressions can be evaluated in the following three ways.
- In modern shell scripts the use of expr is better replaced with `var=$((...))`

```bash
$ let x=( 9 * 9 ) ; echo $x
81

$ echo $(( $x + 7 ))
88
```


## Using the built-in shell command `let`

```bash
let x=( 1 + 2 ) ; echo $x  #==> 3
```

## Using the `$((...))` syntax
- The built-in shell format.

```bash
echo $(( x + 1 ))
```

## Using the `expr` utility
- A standard but somewhat **deprecated** program. 

```bash
expr 8 + 8
```
