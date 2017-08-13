# Background and Foreground Processes

Linux supports background and foreground job processing. (A job in this context is just a command launched from a terminal window.)

==

## Running the job in Foreground
- By default all jobs are executed in the foreground. 
- Run directly from the shell
- When one foreground job is running, other jobs need to wait for shell access (at least in that terminal window if using the GUI) until it is completed. 

==

## Running the job in the background
- Put a job in the background by suffixing `&` to the command, e.g., `updatedb &`
- Free the shell for other tasks.
- Useful when the current job is going to take a long time (even several hours) to complete.

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen35.jpg)

- `CTRL-Z` : to suspend a foreground job
- `CTRL-C` : to terminate a foreground job
- `bg` command : to run a process in the background
- `fg` command : to run a process in the foreground

==

## Managing Jobs

### The `jobs` utility
- Used to view the **background processes** in the **current terminal**
- Display all jobs running in background
    + job ID
    + state
    + command name
- Options:
    + `jobs -l` : Include the PID of the background jobs
- NOTE: The background jobs are connected to the terminal window, so if you log off, the jobs utility will not show the ones started from that window.

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen36.jpg)

==

## Examples
[](https://courses.edx.org/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/Processes.pdf)

```bash
# Create a job that
# - writes the date to an output file
# - three times
# - with a gap of 60 seconds and 180 seconds. 
$ (date ; sleep 60 ; date ; sleep 180 ; date) > date.out &
[1] 52900

# Check whether the first date was outputted to the file.
$ cat date.out
Sun Mar 13 16:51:51 EDT 2016

# Check whether the background job is running.
$ jobs
[1]+  Running          ( date; sleep 60; date; sleep 180; date ) > date.out &

# Bring it to foreground job. 
$ fg %1
( date; sleep 60; date; sleep 180; date ) > date.out

# Stop the foreground job. (control + Z)
^Z
[1]+  Stopped          ( date; sleep 60; date; sleep 180; date ) > date.out

# Make it run in the background. 
$ bg %1
[1]+ ( date; sleep 60; date; sleep 180; date ) > date.out &

# Check whether the job is running.
$ jobs
[1]+  Running          ( date; sleep 60; date; sleep 180; date ) > date.out &

# Kill the background job.
$ kill %1
[1]+  Terminated: 15   ( date; sleep 60; date; sleep 180; date ) > date.out

# Check whether the job is killed.
$ jobs
```
