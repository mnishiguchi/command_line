## Functions
- a code block that implements a set of operations.
- Useful for executing procedures multiple times. 
- Often called subroutines.
- Using functions in scripts requires two steps:
  1. Declaring a function
  2. Calling a function
- Arguments: The first argument can be referred to as `$1`, the second as `$2`, etc.


### The function declaration

Syntax
```bash
function_name () {
   command...
}
```

Example
```bash
#!/bin/bash

# Declare a function.
say_hello_to() {

  # The first argument can be referred to as `$1`.
  echo "Hello," $1 "!!!"

}
# Call the function.
say_hello_to "Christine"
say_hello_to "Masatoshi"
```

```bash
# Execute the script.
$ bash exscript.sh
Hello, Christine !!!
Hello, Masatoshi !!!
```

==

