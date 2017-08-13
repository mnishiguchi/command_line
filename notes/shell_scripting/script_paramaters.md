# Script Parameters

- Users often need to pass parameter values to a script, such as a filename, date, etc.   
- Can be text or numbers as in:

```bash
$ ./script.sh /tmp      # a string as an argument
```

```bash
$ ./script.sh 100 200   # numbers as arguments
```

- Within a script, the parameter or an argument is represented with a `$` and a number.

```bash
$0            Script name
$1            First parameter
$2, $3, etc.  Second, third parameter, etc.
$*            All parameters
$#            Number of arguments
```

### Script to display the arguments passed on the command prompt
```bash
#!/bin/bash
echo "The name of the script being executed: $0"

if [ $# -eq 0 ] ; then
    echo "No argument passed"
elif [ $# -eq 1 ] ; then
    echo "The 1st argument passed: $1"
elif [ $# -eq 2 ] ; then
    echo "The 1st argument passed: $1"
    echo "The 2st argument passed: $2"
else
    echo "All of the arguments passed from the command line are: $*"
fi

echo
echo "All done with $0"
```

```bash
$ bash commandline_args.sh
The name of the script being executed: commandline_args.sh
No argument passed

All done with commandline_args.sh
-----------------------------------------------------
$ bash commandline_args.sh first
The name of the script being executed: commandline_args.sh
The 1st argument passed: first

All done with commandline_args.sh
-----------------------------------------------------
$ bash commandline_args.sh first second
The name of the script being executed: commandline_args.sh
The 1st argument passed: first
The 2st argument passed: second

All done with commandline_args.sh
-----------------------------------------------------
$ bash commandline_args.sh first second third
The name of the script being executed: commandline_args.sh
All of the arguments passed from the command line are: first second third

All done with commandline_args.sh
```
