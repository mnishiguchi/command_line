# Discarding Output with `/dev/null`

Certain commands like find will produce voluminous amounts of output which can overwhelm the console.
To avoid this, we can redirect the large output to a special file (a device node) called /dev/null.

![](https://d37djvu3ytnwxt.cloudfront.net/asset-v1:LinuxFoundationX+LFS101x.2+1T2015+type@asset+block/LFS01_ch15_screen37a.jpg)

## `/dev/null`
- A special file (a device node), also called the bit bucket or black hole.
- Discards all data that gets written to it and never returns a failure on write operations. 

```bash
$ find / > /dev/null
# The entire standard output stream is ignored.
# But any errors will still appear on the console.
```
