# Using directory as a remote repo
- We can use a directory as a remote repo.
- [意外と知らないGitのremoteの便利な使い方](http://qiita.com/LOUIS_rui/items/77c211d4ca430e223027)

```sh
# git-repoをカレントディレクトリにcloneして作成する方法
git clone --no-local ./git-repo ./git-repo2
# remoteを登録する方法
git remote add local-repo /path/to/git-repo
```
