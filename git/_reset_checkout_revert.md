# Recovering from errors
- [Reset, Checkout, and Revert](https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting)
- Can be dangerous
- common scenarios:
    + making unintentional changes to a project and wanting to get back to the state of the repo at the last commit (HEAD)
    + a bug or defect

---

## Clearing the working directory of the uncommited changes
- Reverting to HEAD
- Use `git checkout -f` to clear all the uncommited changes in the staging area
- Can be dangerous as it wipes out all the changes we have made.
- (The command `git reset --hard HEAD` is equivalent)

```bash
# Clear the working directory of any changes
$ git add -A
$ git checkout --force  # `git reset --hard HEAD` is equivalent
```

---

## Moving the HEAD to a previous commit

```bash
# Move the hotfix branch backwards by two commits.
$ git checkout hotfix
$ git reset HEAD~2
```

---

## Checking out an earlier version of the repo
- Useful for quickly inspecting an old version of the project.

#### Using `Head~<n>`

```bash
$ git checkout HEAD~2
```

#### Using the SHAs from Git log

```bash
# Run git log
# Hit `G` to go to the last line of the log
$ git log
commit 1086d53a0b8a0049f09ac2b30a56958e049e0329
Author: Masatoshi Nishiguchi <nishiguchi.masa@gmail.com>
Date:   Sun Jan 31 10:24:15 2016 -0500

    Update notes

# Copy the SHA and check it out
$ git checkout 1086d53a0b8a0049f09ac2b30a56958e049e0329

# We will be in a 'detached HEAD' state
# Inspect the state of the project and figure out any necessary changes

$ git checkout master
```

---

## Revert
- Undoes a commit by creating a new commit (rather than removing the commit from history).

- Like `git checkout`, `git revert` has the potential to overwrite files in the working directory, so it will ask you to `commit` or `stash` changes that would be lost during the revert operation.

```bash
$ git checkout hotfix
$ git revert HEAD~2
```
