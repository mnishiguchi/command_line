# `tee`

- Saves standard input to a file, while sending it to standard output

```
$ ls -hartl | tee test
total 24
drwxr-xr-x  11 masa  staff   374B Feb 13 17:55 ..
-rw-r--r--   1 masa  staff    52B Feb 14 12:11 languages
-rw-r--r--   1 masa  staff    52B Feb 14 15:16 translated
drwxr-xr-x   5 masa  staff   170B Feb 14 15:30 .
-rw-r--r--   1 masa  staff   269B Feb 14 15:33 test

$ cat test
total 24
drwxr-xr-x  11 masa  staff   374B Feb 13 17:55 ..
-rw-r--r--   1 masa  staff    52B Feb 14 12:11 languages
-rw-r--r--   1 masa  staff    52B Feb 14 15:16 translated
drwxr-xr-x   5 masa  staff   170B Feb 14 15:30 .
-rw-r--r--   1 masa  staff   269B Feb 14 15:33 test
```
