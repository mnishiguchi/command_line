# Renaming a file using git mv
- `git mv <original-name> <new-name>`
- Git will deal with this as a modification of the filename.
- Note: Don't use the regular mv command for git, because it would make git think the file is deleted and a new file is created.
- http://noone.org/blog/English/Computer/VCS/How%20to%20move%20a%20git%20submodule.html

```shell
$ git mv README.rdoc README.md
$ git commit -am "Improve the README"
```
