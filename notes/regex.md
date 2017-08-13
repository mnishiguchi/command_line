# Regular Expressions

- text strings used for matching a specific pattern, or to search for a specific location, such as the start or end of a line or a word
- can contain both normal characters or so-called metacharacters (`*`, `$`, etc.) 

- Many text editors and utilities work extensively with regular expressions:
    + vi,
    + sed, 
    + awk, 
    + find and 
    + grep 
- Some of the popular computer languages that use regular expressions include :
    + Perl, 
    + Python and 
    + Ruby

- IMPORTANT: Regular Expressions are different from the wildcards (or "metacharacters") used in filename matching in command shells such as bash

```
.     |  Match any single character
a|z   |  Match a or z
$     |  Match end of string
*     |  Match preceding item 0 or more times
```

e.g., `the quick brown fox jumped over the lazy dog`
```
a..   |  Match azy
b.|j. |  Match both br and ju
..$   |  Match og
l.*   |  Match lazy dog
l.*y  |  Match lazy
the.* |  Match the whole sentence
```
