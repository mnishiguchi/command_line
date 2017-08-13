# String Manipulation

### String operators

#### `[[ string1 > string2 ]]`
- Compares the sorting order of string1 and string2.

#### `[[ string1 == string2 ]]`
- Compares the characters in string1 with the characters in string2.

#### `myLen1=${#string1}`
- Saves the length of string1 in the variable myLen1.

### Substrings
#### `${string:<offset>:<count>}` 
- offset: the offset in the string
- count: the number of characters to be extracted

#### `${string#*<separator>}`
- Extract all characters in a string after a dot (.).

```bash
$ export name="masatoshi.nishiguchi@udc.edu"

$ first=${name:0:9}; echo $first
masatoshi

$ domain=${name#*@}; echo $domain
udc.edu
```

### Appending
- [How do you append to an already existing string?](http://stackoverflow.com/questions/2250131/how-do-you-append-to-an-already-existing-string)

```bash
# Make sure the user passed in a word.
if [ $# -eq 0 ] ; then
  echo "Error: must pass in one word as an argument"
  exit 1
fi

# Appends a random number to the word that was passed in.
word=$1-$RANDOM

# Display it to the user
echo $word
```

