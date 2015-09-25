# Utility commands

## Removing files that no longer exist in the local filesystem
- `git rm $(git ls-files -d)`
-「git管理されてるはずなんだけど、ローカルのファイルシステム上にはもう存在してないファイル」をまとめて消去可能。


