# Viewing file

## `less`

- For large files
- [practical options](http://qiita.com/ine1127/items/64b5b6cf52471c3fe59c?utm_source=Qiita%E3%83%8B%E3%83%A5%E3%83%BC%E3%82%B9&utm_campaign=e5fa4eedd8-Qiita_newsletter_175_09_29_2015&utm_medium=email&utm_term=0_e44feaa081-e5fa4eedd8-33092257)

==

## `tail`

- For troubleshooting using log files
- Displays 10 lines by default

### continually monitor new output in a growing log file
- enables you to monitor any current activity that is being reported and recorded

```
$ tail –f atmtrans.txt
```

### Specify the number of lines to be displayed
```
$ tail -n 15 atmtrans.txt
```

==

## `cat`

- For small files

```
$ cat filename
```

==
