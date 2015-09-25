# [Collaborating](http://www.learnenough.com/git-tutorial#sec-collaborating)

- Using separate branches for bugfixes is a common convention.

## common collaboration workflow

### Add collaborators on the website repository
1. On GitHub, click Settings > Collaborators
2. Put collaborator’s GitHub username in the Add collaborator box
3. The collaborators will get the notification

### Clone

1. Go to GitHub to get the clone URL
2. Make a full copy of the repository (including its history) using git clone

```bash
[~]$ cd tmp/
[tmp]$ git clone <clone URL> repo-copy
Cloning into 'repo-copy'...
[tmp]$ cd repo-copy/
```

### Push
1. Commit changes
2. Push up to the remote repository
3. Notify the other collaborators about the changes

### Pull
- Get the changes from the remote origin by running `git pull`.
- Pull in changes other collaborators made.
- [Do a git pull before making any changes on a project](http://www.learnenough.com/git-tutorial#sec-merge_conflicts)
- Because of the potential for conflict, it’s a good idea to do a git pull before making any changes on a project with multiple collaborators.

### Working on a topic branch that someone created

- To be able to work on a branch on our local copy, we need to check it out
- Send other collaborators a note about the changes we made

1. `git branch -a  ` to see all the branches
2. `git co <branch>` to get a local copy of that branch
3. `git diff master` to see the difference against master

