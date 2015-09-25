# Git staus sequences for a changing files

```
                    git add         git commit          git push
[Untracked/Unstaged]  ===>  [Staged]  ===>  [Local repo]  ===>  [Remote repo]
```

==

# Local repository

## [add -A] vs [add -a] vs [add .] vs [add -u]
- `git add -A`: stages all untracked files
- `git add -a`: stages all the changes in currently existing files
- `git add . `: stages new & modified, without deleted
- `git add -u`: stages modified & deleted, without new
- http://stackoverflow.com/questions/572549/difference-between-git-add-a-and-git-add

NOTE:
- The -a option does not add files not already added to the repo. When there are new files it is important to run with the -A option.

==

# Remote repository

## GitHub, Bitbucket, etc.
- a full backup of our code (including the full history of commits)
- makes any future collaboration much easier
- opens the door to participating in a wide variety of open-source projects

## Adding Github as origin for our branch 

```bash
# Go into the app's root directory.
$ cd app_root

# Add GitHub as the origin for our main (master) branch .
$ git remote add origin https://github.com/mnishiguchi/first_app.git

# Push up the repo and its refs to GitHub for the first time
$ git push -u origin master
```

- `git remote add                 `: Tell Git about a remote repo
- `git push -u <location> <branch>`: Push a branch to remote location
- `git push                       `: Push changes to default remote repo

- `-u`: Set upstream option. Once this option is set, we can simply run `git push`.

==

# Misc.

## Checking if the git excutable is available in our machine

```bash
masa@Masas-Mac:~/linux_and_git_notebook (master)
$ which git
/usr/bin/git
```

## Checking the unstaged changes since the last commit
- Checking the difference between the last commit and unstaged changes in the current project

```
$ git diff
```

==

