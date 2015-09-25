# Command Substitution
- Substitute the result of a command as a portion of another command.
- Can be done in two ways:
    + Obsolete: ``` ` <COMMANDS> ` ``` (backticks)
    + Modern (better): `$( <COMMANDS> )`
        * the `$( )` method allows command nesting
- http://wiki.bash-hackers.org/syntax/expansion/cmdsubst
- https://bash.cyberciti.biz/guide/Command_substitution

```bash
# The output of the command "uname –r" becomes the argument for the cd command.
$ cd /lib/modules/$(uname -r)/
```
