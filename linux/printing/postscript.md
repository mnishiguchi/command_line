# PostScript

- Standard page description language
- Effectively manages scaling of fonts and vector graphics to provide quality printouts
- Purely a text format that contains the data fed to a PostScript interpreter
- Developed by Adobe in the early 1980s to enable the transfer of data to printers.

--

## Features of PostScript

- Can be used on any modern printer
- Any program that understands the PostScript specification can print to it
- Information about page appearance, etc. is embedded in the page

```
PostScript --> scaling of fonts           --> Data fed to 
               scaling of vector graphics     PostScript interpreter
```

==

## enscript

- tool used to convert a text file to:
    + PostScript
    + Rich Text Format (RTF)
    + HyperText Markup Language (HTML)
    + and other formats

--

### Command Usage

#### Convert a text file to PostScript
- saved to psfile.ps
```
enscript -p psfile.ps textfile.txt  
```

#### Convert a text file to n columns
- where n=1-9 
- saved in psfile.ps
```
enscript -n -p psfile.ps textfile.txt   
```

#### Print a text file directly to the default printer
```
enscript textfile.txt   
```

#### Convert a text file to two column (-2) formatted PostScript
- `-r`: rotate the output to print in the landscape mode

```
enscript -2 -r -p psfile.ps textfile.txt
```

==

## `flpsed` 
- Can add data to a PostScript document
- Useful for filling in forms or adding short comments into the document

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch13_Screen_53.jpg)

