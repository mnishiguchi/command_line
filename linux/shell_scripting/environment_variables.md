# Environment Variables

- Variables can either be user or system defined. 
- Many applications use such environment variables for supplying inputs, validation, and controlling behaviour.
- Some examples of standard environment variables: `HOME`, `PATH`, and `HOST`.

### Viewing the value of environment variables
-  When referenced, environment variables **must be prefixed with the `$` symbol** as in `$HOME`.

```bash
# Displaying the value stored in the PATH variable.
$ echo $PATH
```

### Setting or modifying the variable value
- **No prefix is required** when setting or modifying the variable value. 

```bash
# setting the value of the MYCOLOR variable to blue.
$ MYCOLOR=blue
```

### Getting a list of environment variables

Use `env`, `set`, or `printenv` commands.

==

## Exporting Variables

- By default, the variables created within a script are **available only to the subsequent steps of that script**. Any child processes (sub-shells) do not have automatic access to the values of these variables.
- Export environment variables make them available to child processes.

### The export statement

- `export VAR=value` or `VAR=value ; export VAR`
- IMPORTANT: Exported variables are not shared, but only copied for local use (passed by value).

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch14_screen19.jpg)
