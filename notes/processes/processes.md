# Unix processes
- On Unix-like systems such as Linux and OS X, user and system tasks each take place within a well-defined container called a process.
- Process is simply an instance of one or more related tasks (threads) executing on your computer.
- It is not the same as a program or a command; a single program may actually start several processes simultaneously.
- Some processes are independent of each other and others are related.
- A failure of one process may or may not affect the others running on the system.
- Processes use many system resources, such as memory, CPU cycles, and peripheral devices such as printers and displays.
- The operating system (especially the kernel) is responsible for allocating a proper share of these resources to each process and ensuring overall optimum utilization.

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen03.jpg)

---

## Process Types
- Processes can be of different types according to the task being performed.
    + **Interactive Processes**
        * Need to be started by a user, either at a command line or through a graphical interface such as an icon or a menu selection.    
        * e.g., bash, firefox, top
    + **Batch Processes**
        * Automatic processes
        * **Scheduled to run** and then **disconnected from the terminal**
        * These tasks are queued and work on a **FIFO (First In, First Out)** basis.
        * e.g., updatedb
    + **Daemons**
        * Server processes that run continuously.
        * Many are launched during system startup and then wait for a user or system request indicating that their service is required.   
        * e.g., httpd, xinetd, sshd
    + **Threads**
        * Lightweight processes.
        * These are tasks that run under the umbrella of a main process, sharing memory and other resources, but are scheduled and run by the system on an individual basis.
        * An individual thread can end without terminating the whole process and a process can create new threads at any time.
        * Many non-trivial programs are multi-threaded.    
        * e.g., gnome-terminal, firefox
    + **Kernel Threads**
        * Kernel tasks that users neither start nor terminate and have little control over.
        * These may perform actions like moving a thread from one CPU to another, or making sure input/output operations to disk are completed.
        * e.g., swapd0, migration, ksoftirqd

---

## Process Scheduling and States

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen05.jpg)

### Running state
- A process is either currently executing instructions on a CPU, or is waiting for a share (or time slice) so it can run.

### Scheduler
- A critical kernel routine
- Constantly shifts processes in and out of the CPU, sharing time according to relative priority, how much time is needed and how much has already been granted to a task.

### Run queue
- All processes managed by the scheduler reside on what is called a run queue.
- On a computer with multiple CPUs, or cores, there is a run queue on each.

### Sleep state (waiting state)
- Processes are waiting for something to happen before they can resume, perhaps for the user to type something.
- In this condition a process is sitting in a wait queue.

### Zombie state
- Sometimes a child process completes but its parent process has not asked about its state.
- It is not really alive but still shows up in the system's list of processes.

---

## Process and Thread IDs

- At any given time there are always multiple processes being executed. The operating system keeps track of them by assigning each a unique process ID (PID) number. The PID is used to track process state, cpu usage, memory use, precisely where resources are located in memory, and other characteristics.
- New PIDs are usually assigned in ascending order as processes are born. Thus PID 1 denotes the init process (initialization process), and succeeding processes are gradually assigned higher numbers.

### Types

- **Process ID (PID)**    
    - Unique Process ID number
- **Parent Process ID (PPID)**    
    - Process (Parent) that started this process
- **Thread ID (TID)**
    - Thread ID number.
    - This is the same as the PID for single-threaded processes.
    - For a multi-threaded process, each thread shares the same PID but has a unique TID.

---

## User and Group IDs
- Most of the time we ignore these details and just talk about the User ID (UID).

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen07.jpg)

### Real User ID (RUID)
- The operating system identifies the user **who starts the process** by the Real User ID (RUID) assigned to the user.

### Effective UID (EUID)
- The user **who determines the access rights for the users** is identified by the Effective UID (EUID).
- The EUID may or may not be the same as the RUID.

### Group IDs
- Users can be categorized into various groups.
    + Each group is identified by the **Real Group ID (RGID)**.
    + The access rights of the group are determined by the **Effective Group ID (EGID)**.
- Each user can be a member of one or more groups.

---
