# gitignore

## Ignoring files that are already on repository
- `git rm --cached <filename>`

==

## Only include certain files instead of ignoring certain files
- [Is there a way to tell git to only include certain files instead of ignoring certain files?](http://stackoverflow.com/questions/1279533/is-there-a-way-to-tell-git-to-only-include-certain-files-instead-of-ignoring-cer)

```shell
# ignore all
*
# exceptions
!.bash_profile
!.vimrc
```
