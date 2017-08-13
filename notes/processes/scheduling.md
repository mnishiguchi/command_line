# Scheduling Future Processes
- Scenario: Suppose you need to perform a task on a specific day sometime in the future. However, you know you will be away from the machine on that day.

## The `at` utility
- Execute any **non-interactive** command **at a specified time**.

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch16_screen41b.jpg)

### Example: Scheduling a One-Time Backup
- Create job using at to back up files in one directory to another 10 minutes from now.

```bash
$ at now + 10 minutes   # 10 minutes from now
at> cp dir_1/* dir_2/   # Job: Copy all the files in dir_1 to dir_2
at> <EOT>               # CTRL-D
job 1 at Tue Mar 15 17:17:00 2016
```

### `sleep` vs `at`
- `sleep`: to delay execution **for a specific period**.
- `at`: to start execution **at a later time**.

==

## The `cron` utility
- A **time-based scheduling** utility program.
- Used to schedule a **periodically performed task**
- Can launch routine background jobs at specific times and/or days on an on-going basis.
- Driven by a configuration file called `/etc/crontab` 
- Each user can have their own `crontab`, and they are not intended to be edited directly.

### cron table 
- Contain the various shell commands that need to be run at the properly scheduled times. 
- There are both **system-wide** crontab files and **individual user-based** ones.
- Each line of a crontab file represents a job, and is composed of a so-called *CRON expression*, followed by a shell command to execute.
- Each line of the crontab file will **contain 6 fields**:

```
Field   Description   Values
-------------------------------------------------
MIN     Minutes        0 to 59
HOUR    Hour field     0 to 23
DOM     Day of Month   1-31
MON     Month field    1-12
DOW     Day Of Week    0-6 (0 = Sunday)
CMD     Command        Any command to be executed
```

### The `crontab -e` command
- Open the `crontab` editor to edit existing jobs or to create new jobs.
- Edit the current `crontab` using the editor specified by the VISUAL or EDITOR environment variables.

### Sample entries
```bash
# Schedule a job to execute 'script.sh'
# every minute of every hour of every day of the month, and every month and every day in the week.
* * * * * /usr/local/bin/execute/this/script.sh

# Schedule a full-backup
# at 8.30am, 10-June irrespective of the day of the week.
30 08 10 06 * /home/sysadmin/full-backup
```

### Example: Scheduling Repeated Backups
- Set up a cron job to backup the files in one directory to another every day at 10 am.
- Put the commands in file called mycron.

```bash
# Set up a cron job to backup the files in one directory to another
# every day at 10 am.
$ nano mycron
0 10 * * * /root/bin/mybackup
CTRL-X

# Define the script mybackup.
$ nano bin/mybackup
cp dir_1/* dir_2/
CTRL-X

# Ensure that we can execute the script.
$ chmod +x bin/mybackup

# Install the tables used to drive the cron(8) daemon in Vixie Cron.
$ crontab mycron

# Display the current crontab on standard output.
$ crontab –l 
```

==




