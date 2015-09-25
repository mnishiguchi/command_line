# Printing operations

==

## Printing from the Graphical Interface
- Allow users to access printing features using the `CTRL-P` shortcut

1. Specify the printer (or a file name and location if you are printing to a file instead) you want to use
2. Select the page setup, quality, and color options
3. Submit the document for printing
4. The document is then submitted to CUPS
5. You can use your browser to access the CUPS web interface at http://localhost:631/ to monitor the status of the printing job
6. Now that you have configured the printer, you can print using either the Graphical or Command Line interfaces

- [screenshot](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_Chapter13_Screen36_B_.jpg)

==

## [Printing from the Command-Line Interface](https://youtu.be/1xALrA3-PJg)

- Use either `lp` or `lpr`
- (`lp` is just a command line front-end to the `lpr` utility that passes input to `lpr`)
- Use these commands to print text, PostScript, PDF, and image files
- Useful in cases where printing operations must be automated (from shell scripts, for instance, which contain multiple commands in one file)
- https://learningmate.s3-us-west-2.amazonaws.com/LFS01/Chapter13/Section2/screen40/index.html

--

### `lp`
- Accepts command line options that help you perform all operations that the GUI can accomplish
- Typically used with a file name as an argument

#### To print the file to default printer
```
lp <filename>   
```

#### To print to a specific printer (useful if multiple printers are available)
````
lp -d printer <filename>    
```

#### To print the output of a program
```
program | lp
echo string | lp    
```

#### To print multiple copies
```
lp -n number <filename> 
```

#### To set the default printer
- The `lpoptions` utility can be used to set printer options and defaults.
- Each printer has a set of tags associated with it, such as the default number of copies and authentication requirements.
- You can execute the command `lpoptions` help to obtain a list of supported options.
- `lpoptions` can also be used to set system-wide values, such as the default printer.

```
lpoptions -d printer    
```

#### To show the queue status
```
lpq -a  
```

#### To configure printer queues
```
lpadmin 
```

==

## Managing Print Jobs

- monitor the job state
- list all printers 
- check their status
- cancel print jobs
- move print jobs to another printer.

#### To get a list of available printers, along with their status
```
lpstat -p -d    
```

#### To check the status of all connected printers, including job numbers
```
lpstat -a   
```

#### To cancel a print job
```
cancel job-id
```
OR
```
lprm job-id 
```

#### To move a print job to new printer
```
lpmove job-id newprinter    
```

