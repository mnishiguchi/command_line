# Loop constructs

## The for loop

```bash
sum=0
for num in 1 2 3 4
do
  sum=$(( $sum + $num ))
done

echo "The sum of $num numbers is: $sum"
```

```bash
$ bash forloop.sh
#==>The sum of 4 numbers is: 10
```

--

```bash
# Execute the ls command and iterate over the output of ls.
for filename in $(ls)
do
  # Retrieve extension available from each filename.
  ext=${filename##*\.}

  # Display a message based on the extension of the file.
  case "$ext" in
    c )   echo "$filename : C source file" ;;
    o )   echo "$filename : Object file" ;;
    sh )  echo "$filename : Shell script" ;;
    txt ) echo "$filename : Text file" ;;
    * )   echo "$filename : Unknown file type/Not processed" ;;

  esac
done
```

==

## The while loop

```bash
echo "Enter the number:"
read number
fact=1  # Accumulator, initially set to smallest factorial 1.
i=1     # Start from 1.

# Repeat until the index becomes greater than the specified number.
while [ $i -le $number ]
do
  fact=$(( $fact * $i ))  # Multiply the accumulator by the index.
  i=$(( $i + 1 ))         # Increment the index by 1.
done

# Output the result.
echo "The factorial of $number is $fact"
```

```bash
# Prompt the user for a filename and store it in a variable.
echo -e "Enter absolute path of the filename you want to read:"
read filename

# Redirect stdin to a file.
exec <$filename  # The exec builtin command replaces the program and executes it.

# Repeat while a line of text exists, do the following:
while read line
do
  echo $line  # Display the line being read.
done
```

==

## The until loop


