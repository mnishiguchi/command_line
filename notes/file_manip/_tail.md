## `tail`

- Reads the first few lines of each named file (10 by default) and displays it on standard output
- useful when you are troubleshooting any issue using log files as you probably want to see the most recent lines of output

```
$ tail -n 15 atmtrans.txt
```

### continually monitor new output in a growing log file
- enables you to monitor any current activity that is being reported and recorded

```
$ tail –f atmtrans.txt
```

==

## `head`

- Reads the first few lines of each named file (10 by default) and displays it on standard output

```
$ head atmtrans.txt
```

```
$ head –n 5 atmtrans.txt
```


