# Setup

## One-time system setups
```shell
git config --global user.name "Masatoshi Nishiguchi"
git config --global user.email nishiguchi.masa@gmail.com
```

## Viewing the settings
```shell
git config --list
```

- http://git-scm.com/book/en/Getting-Started-First-Time-Git-Setup


## Setting convenient aliases/shortcuts for git commands
```shell
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
```

- [Common aliases](http://githowto.com/aliases)

## [Associating text editors with Git](https://help.github.com/articles/associating-text-editors-with-git/)
- Setting the editor Git will use for commit messages.

```
git config --global core.editor "atom --wait"
```

```
git config --global core.editor "subl -n -w"
```
