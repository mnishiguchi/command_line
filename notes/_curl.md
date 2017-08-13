# cURL
- Obtain information about a URL (e.g., the source code being used)
- Can be used from the command line or a script
- Allows us to save the contents of a web page to a file as does wget
- http://curl.haxx.se/docs/httpscripting.html
- http://qiita.com/Hiraku/items/dfda2f8a5353b0742271
- Usage: curl [options...] <url>

## Checking usage
```
$ curl --help
```

==

## Inspecting HTTP header
- Use `curl --head http://some.url.com` or `curl -I http://some.url.com/`
- [HTTPヘッダーをMacのターミナルから簡単に確認したい時](http://qiita.com/KENJU/items/9971b9719853bbed3e88)

```
$ curl --head http://mnishiguchi.github.io
HTTP/1.1 200 OK
Server: GitHub.com
Content-Type: text/html; charset=utf-8
Last-Modified: Sun, 11 Oct 2015 21:57:54 GMT
Access-Control-Allow-Origin: *
Expires: Sat, 31 Oct 2015 15:10:10 GMT
Cache-Control: max-age=600
X-GitHub-Request-Id: 17EB2720:592B:3799CA2:5634D77A
Content-Length: 6274
Accept-Ranges: bytes
Date: Sat, 31 Oct 2015 15:00:10 GMT
Via: 1.1 varnish
Age: 0
Connection: keep-alive
X-Served-By: cache-atl6232-ATL
X-Cache: MISS
X-Cache-Hits: 0
X-Timer: S1446303610.431096,VS0,VE17
Vary: Accept-Encoding
X-Fastly-Request-ID: 0bf55f9f1acb9fbf65a7c24b9b6fa4d7e9a68d53
```

==

## Downloading a project from Github

**recipe**
```
# -o, --output FILE   Write to FILE (instead of stdout)
# -L, --location      Follow redirects

$ curl -o /some_dir/filename.zip
       -L https://github.com/path/for/downloading/filename.zip

$ unzip /path/to/filename.zip -d /tmp
```

**example**
```
$ curl -o /tmp/bootstrap.zip -L https://github.com/twbs/bootstrap/releases/download/v3.1.1/bootstrap-3.1.1-dist.zip

$ unzip /tmp/bootstrap.zip -d /tmp
```

**the unzip command**
```
Usage: unzip [-Z] [-opts[modifiers]] file[.zip] [list] [-x xlist] [-d exdir]
  Default action is to extract files in list, except those in xlist, to exdir;
  file[.zip] may be a wildcard.  -Z => ZipInfo mode ("unzip -Z" for usage).
```

==


