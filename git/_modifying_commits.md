# Modifying commits

---

## Amending the last commit
- Useful for changing the last commit message.
- Useful for adding to the last commit the files in the staging area.

```bash
$ git commit --amend
```

---

## Editing the last few commits using rebase

```bash
# Edit the 3 previous commits.
$ git rebase -i HEAD~3
```

```shell
pick f7f3f6d changed my name a bit
squash 310154e updated README formatting and added blame
squash a5f4a0d added cat-file
```

---

## Deleting all the past history
- http://stackoverflow.com/a/9683337/3837223

```
# Step 1: remove all history
$ rm -rf .git

# Step 2: reconstruct the Git repo with only the current content
$ git init
$ git add .
$ git commit -m "Initial commit"

# Step 3: push to GitHub
$ git remote add origin <github-uri>
$ git push -u --force origin master
```
