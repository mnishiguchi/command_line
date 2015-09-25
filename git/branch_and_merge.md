# Branch and Merge

## branch
- Effectively copies of a repository where we can make (possibly experimental) changes without modifying the parent files
- In most cases, the parent repository is the master branch, and we can create a new topic branch by using checkout with the -b flag:
- Even if we really screw things up, we can always abandon the changes by checking out the master branch and deleting the topic branch. 

### Creating a new branch and switching to it
```shell
$ git checkout -b a_new_topic_branch
```

### Listing all the local branches
- the asterisk * identifies which branch we’re currently on
```shell
$ git branch
``` 
==

## merge
- Merge a topic branch back into our master branch

### Switching branches to master
```shell
$ git checkout master
```

### Merging a topic branch into our master branch
```shell
$ git merge topic_branch
```

Note: Git output frequently includes Git’s internal representation of repositories.

==

## Renaming a branch

### Renaming a branch while pointed to any branch
`git branch -m <oldname> <newname>`

### Renaming the current branch
`git branch -m <newname>`

==

## Deleting a branch

### Case 1: Already-merged branch
- `$ git branch -d topic-branch` 
- This step is optional
- It’s common to leave the topic branch intact

### Case 2: Branch that you messed up
- Don't do this unless you mess up a branch.
- (Unlike the -d flag) the -D flag will delete the branch even though we haven’t merged in the changes.

```shell
$ git checkout -b topic-branch
$ <really screw up the branch>
$ git add -A
$ git commit -a -m "Major screw up"
$ git checkout master
$ git branch -D topic-branch 
```

### Case 3: Delete all the branches but currenty working branch
- `git branch -d $(git branch)`
- `git branch`の結果をそのまま`git branch -d`に渡してしまうという荒業。
- 今自分がcheckoutしているブランチ以外の全てのローカルブランチ(リモートブランチには影響なし)を消去可能。
- まだ派生元にマージされていないブランチにはエラーが出て消さない。
- でも一応やる前には、ちゃんととっておきたいブランチが他に無いか確認すべき。
