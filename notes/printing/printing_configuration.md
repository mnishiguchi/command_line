# Printing configuration
- The printing software CUPS is required to configure the printing.
- Most Linux systems come with CUPS preinstalled
- Generally the only time you should need to configure your printer is when you use it for the first time. In fact, CUPS often figures things out on its own by detecting and configuring any printers it locates.

==

## Common UNIX Printing System (CUPS)
- The Linux standard for printing software
- Connects
    + a local printer to a Linux system and share it over a network
    + a network printer to a Linux system
- Converts information from the application you are using to a language your printer can understand
- Used behind the scenes to print from applications like a web browser or LibreOffice
    + Converts page descriptions produced by your application (put a paragraph here, draw a line there, and so forth) and then
    + sends the information to the printer. 
    + Acts as a print server for local as well as network printers
- Accommodates a wide variety of printers and also processes various data formats
- Has a browser-based interface which allows you to view and manipulate the order and status of pending print jobs.

```
                    User
                     |
                     V
Configuration --> Scheduler                
files              |      |
                   V      V
                  Job     Log
                 files   files
                   |
                   V
                 Filter --> PPD filter --> Backend --> Printer
```

1. We execute a print command
2. The scheduler validates the command and processes the print job
3. The scheduler creating job files according to the settings specified in configuration files
4. Simultaneously, the scheduler records activities in the log files. 
5. Job files are processed with the help of the filter, printer driver, and backend
6. The processed job files are sent to the printer

--

### Scheduler
- manages print jobs, 
- handles administrative commands, 
- allows users to query the printer status, and 
- manages the flow of data through all CUPS components

--

### Configuration files
- server settings that the print scheduler reads
- the two most important: `cupsd.conf` and `printers.conf` 
- All other CUPS related configuration files are stored under the `/etc/cups/`directory

#### `cupsd.conf`
- **system-wide settings** (Does not contain any printer-specific details)
- Mostly **network-security-related** settings,
    + i.e. which systems can access CUPS network capabilities
    + i.e. how printers are advertised on the local network
    + i.e. what management features are offered, and so on

#### `printers.conf`
- **printer-specific settings**
- Describes the **printer’s status and capabilities** for every printer connected to the system
- Generated only after adding a printer to the system and **should not be modified by hand**

#### View the full list of configuration files
```
$ ls -l /etc/cups/
total 16
dr-x--x--x  2 _lp   admin    68 Feb 14 22:22 certs
-rw-r--r--  1 root  _lp    3147 Aug 15  2015 cups-files.conf
-rw-r--r--  1 root  _lp    3147 Aug 15  2015 cups-files.conf.default
-rw-r--r--  1 root  _lp    6408 Jan 29 11:09 cupsd.conf
-rw-r--r--  1 root  _lp    6386 Aug 15  2015 cupsd.conf.default
drwxr-xr-x  2 root  _lp      68 Sep  9  2014 interfaces
drwxr-xr-x  2 root  _lp      68 Sep  9  2014 ppd
-rw-r--r--  1 root  _lp     128 Aug 15  2015 snmp.conf
-rw-r--r--  1 root  _lp     128 Aug 15  2015 snmp.conf.default
```

--

### Job files

- CUPS stores print requests as files under the `/var/spool/cups` directory
- Commonly known as the print queue
- Can be accessed before a document is sent to a printer
- **Data files**: prefixed with the letter **d** 
- **Control files**: prefixed with the letter **c**
- After a printer successfully handles a job, data files are automatically removed

--

### Log files

- Placed in `/var/log/cups` 
- Used by the scheduler to record activities that have taken place
    + `access_log`  
    + `error_log`
    + `page_log`

#### View what log files exist

```bash
$ sudo ls -l /var/log/cups
Password:
total 0
-rw-r--r--  1 root  _lp  0 Jan 29 11:13 access_log
-rw-r--r--  1 root  _lp  0 Jan 29 11:13 error_log
-rw-r--r--  1 root  _lp  0 Jan 29 11:13 page_log
```

--

### Filters
- Convert job file formats to printable formats

--

### Printer Drivers
- Contain descriptions for currently connected and configured printers
- Usually stored under `/etc/cups/ppd/`
- [PostScript Printer Description (PPD) files](https://en.wikipedia.org/wiki/PostScript_Printer_Description)
    + created by vendors to describe the entire set of features and capabilities available for their PostScript printers 
    + PostScript プリンタで利用可能なすべての機能を記述するためプリンタ・メーカーにより作成・供給されるテキスト・ファイルである。 PPD と略称される。
    + PostScript 言語を開発したアドビシステムズによって策定された。 PPD ファイル内には印刷ジョブがその機能を呼び出すために用いられる PostScript のコード (コマンド) が含まれており、プリンタの諸機能に対する統一されたインターフェースを提供することによって、それ自体ですべての PostScript プリンタに対するドライバとして働く。

--

### Backends
- Help to locate devices connected to the system
- The print data is sent to the printer through a filter and via a backend

==

## [Manually installing CUPS](https://youtu.be/eIJR6dYUYtE)

- CentOS: `$ sudo yum install cups`
- OpenSUSE: `$ sudo zypper install cups`
- Ubuntu: [`$ sudo apt-get install cups`](https://youtu.be/eIJR6dYUYtE)

==

## [Managing CUPS daemon](https://youtu.be/qVIjrTSr58o)

- After installing CUPS, we will need to get CUPS ready for configuring a printer.
- All management features are wrapped around the cups init script, which can be easily started, stopped, and restarted.

==

## [Configuring a Printer from the GUI](https://youtu.be/-UFm0fu6a18)

- Each Linux distribution has a GUI application that lets you add, remove, and configure local or remote printers.
- When configuring a printer, make sure the device is currently turned on and connected to the system; if so it should show up in the printer selection menu.
- If the printer is not visible, you may want to troubleshoot using tools that will determine if the printer is connected.
    + For common USB printers, for example, the `lsusb` utility will show a line for the printer.

==

## [Adding Printers from the CUPS Web Interface](https://learningmate.s3-us-west-2.amazonaws.com/LFS01/Chapter13/Section1/screen33/index.html)

- CUPS also comes with its own web server, which makes a configuration interface available via a set of CGI scripts
- This web interface allows you to:
    + Add and remove local/remote printers
    Configure printers:
    + Local/remote printers
    + Share a printer as a CUPS server
    Control print jobs:
    + Monitor jobs
    + Show completed or pending jobs
    + Cancel or move jobs
- The CUPS web interface is available on your browser at: http://localhost:631
