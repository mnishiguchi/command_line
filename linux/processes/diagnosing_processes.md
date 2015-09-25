# Diagnosing processes
- Do this when something isn’t behaving as expected 
- Any time something isn’t behaving as expected or a process appears to be frozen, it’s a good idea to:
    1. run `ps aux` to see what’s going on, and then
    2. run `kill -9 <pid>` or `pkill -9 -f <name>` to clear things up.

==

## Displaying processes

#### All the processes on your system
```
$ ps aux
```

#### Filtering the processes
- The first number is the process id (pid).

```
$ ps aux | grep spring
ubuntu 12241 0.3 0.5 589960 178416 ? Ssl Sep20 1:46 spring app | sample_app | started 7 hours ago
```

==

## Killing processes

#### All the processes on your system

e.g., kill all the processes with name spring
```
pkill -9 -f spring
```

#### An individual process
- eliminate an unwanted individual process
- issue the Unix kill code to the pid (kill code happens to be 9)
- `$ kill -9 <pid>`

```
$ kill -9 12241
```

