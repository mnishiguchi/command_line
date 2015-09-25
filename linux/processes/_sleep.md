# `sleep`
- Suspend execution for at least the specified period of time, which can be given as the number of seconds (the default), minutes, hours or days. 
- After that time has passed (or an interrupting signal has been received) execution will resume.

## Scenario
Sometimes a command or job must be delayed or suspended. Suppose, for example, an application has read and processed the contents of a data file and then needs to save a report on a backup system. If the backup system is currently busy or not available, the application can be made to sleep (wait) until it can complete its work. Such a delay might be to mount the backup device and prepare it for writing.

## Syntax
```
sleep NUMBER[SUFFIX]...

    where SUFFIX may be:
        s : seconds (the default)
        m : minutes
        h : hours
        d : days
```

==

## Example
- Create a reminder that a meeting is starting in 15 minutes. 
- The reminder should appear 10 minutes from now. (60secs * 10)

```bash
$ sleep 600; echo "The meeting is starting in 15 minutes"
```

==

## `sleep` vs `at`
- `sleep`: to delay execution **for a specific period**.
- `at`: to start execution **at a later time**.


![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen43.jpg)

