# Priorities

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen08.jpg)

- just like a car can have only one driver at a time. Some processes are more important than others so Linux allows you to set and manipulate process priority. Higher priority processes are granted more time on the CPU.


## nice value (niceness)
- The priority for a process can be set by specifying a nice value, or niceness, for the process.
- A process with a high nice value simply allows other processes to be executed first.

```bash
[Highest] -20 .. 19 [Lowest]
```

## real-time priority
- Assigned to time-sensitive tasks, such as controlling machines through a computer or collecting incoming data. 
- This is just a very high priority.

## hard real time
- Make sure a job gets completed within a very well-defined time window.
