# PDF

==

## Viewing PDF Content

Linux has many standard programs that can read PDF files as well as many applications that can easily create them, including all available office suites such as *LibreOffice*.

--

### The most common Linux PDF readers
All of these open source PDF readers support and can read files following the PostScript standard unlike the proprietary Adobe Acrobat Reader, which was once widely used on Linux systems but with the growth of these excellent programs, very few Linux users use it today.

- **Evince**: available on virtually all distributions and the **most widely used program**.
- **Okular**: based on the older kpdf and available on any distribution that provides the KDE environment.
- **GhostView**: one of the first open source PDF readers and is universally available.
- **Xpdf**: one of the oldest open source PDF readers and still has a good user base. 

==

## Modifying PDFs with `pdftk`

- "PDF Toolkit"
- There’s very little `pdftk` cannot do when it comes to working with PDF files
- perform a very large variety of sophisticated tasks:
    + Merging/Splitting/Rotating PDF documents
    + Repairing corrupted PDF pages
    + Pulling single pages from a file
    + Encrypting and decrypting PDF files
    + Adding, updating, and exporting a PDF’s metadata
    + Exporting bookmarks to a text file
    + Filling out PDF forms

--

### Installing `pdftk`

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch13_Screen_48_a.jpg)

- On Ubuntu: `$ sudo apt-get install pdftk`
- On CentOS: `$ sudo yum install pdftk`
- On openSUSE: `$ sudo zypper install pdftk`

--

### Basic usage

#### Merge the two documents doc_1.pdf and doc_2.pdf
The output will be saved to merged.pdf.
```bash
pdftk doc_1.pdf doc_2.pdf \  # Read files
cat \                        # Concatenate all
output merged.pdf            # Output to a new file
```

#### Write only pages 1 and 2 of doc_1.pdf
The output will be saved to new.pdf.
```bash
pdftk A=doc_1.pdf \  # Read a file and store in a variable
cat A1-2 \           # Take only specified pages
output new.pdf       # Output to a new file
```

#### Rotate all pages of doc_1.pdf 90 degrees clockwise
The output will be saved to new.pdf.
```bash
pdftk A=doc_1.pdf \  # Read a file and store in a variable
cat A1-endright \    # Rotate the document to the landscape mode
output new.pdf       # Output to a new file
```

==

## Encrypting PDF Files

#### To apply a password to a file using the `user_pw` option
- When you run this command, you will receive a prompt to set the required password, which can have a **maximum of 32 characters**.
- A new file, `private.pdf`, will be created with the identical content as `public.pdf`, but anyone will need to type the password to be able to view it.

```bash
$ pdftk public.pdf \               # Read a file
output private.pdf user_pw PROMPT  # Prompt for password and then output to a new file
```

==

## Using Additional Tools

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch13_Screen_53.jpg)

### `pdfinfo`
- Can extract information about PDF files
- Useful when the files are very large or when a graphical interface is not available

#### to collect the details of a document
```
$ pdfinfo /usr/share/doc/readme.pdf
```

--

### `pdfmod` 
- Provides a graphical interface for modifying PDF documents
- Using this tool, you can: 
    + reorder, rotate remove pages 
    + export images from a document 
    + edit the title, subject, and author 
    + add keywords
    + combine documents using drag-and-drop action

--

### `flpsed` 
- Can add data to a PostScript document
- Useful for filling in forms or adding short comments into the document

==

## Converting Between PostScript and PDF

- The PostScript format is still important for various technical reasons that the general user will rarely have to deal with.
- From time to time you may need to convert files from one format to the other
- There are very simple utilities for accomplishing that task
- `ps2pdf` and `pdf2ps`
    + part of the ghostscript package installed on or available on all Linux distributions
- `pstopdf` and `pdftops` 
    + usually part of the `popler` package which may need to be added through your package manager
- Unless you are doing a lot of conversions or need some of the fancier options, it really doesn't matter which ones you use.

#### Converts file.pdf to file.ps
```
pdf2ps file.pdf 
```

#### Convertsfile.ps to file.pdf
```
ps2pdf file.ps  
```

#### Converts input.ps to output.pdf
```
pstopdf input.ps output.pdf 
```

#### Converts input.pdf to output.ps
```
pdftops input.pdf output.ps 
```

