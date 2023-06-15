# Git Rebase

* https://dev.to/colbygarland/using-vs-code-to-git-rebase-1lc

Dependencies

* [VSCode](https://code.visualstudio.com/download)
* extensions

## 0. Small changes (e.g. fixing typos)

May be able to use `git commit --amend` instead of rebasing if the changes are related to the previous commit. 

```
git status
git add # list of changed files here
git commit --amend
git push origin [remote] --force-with-lease
```

## 1. Set core.editor

To ease git rebasing and merging conflicts, change the editor to V.S. Code. Extra steps for WSL.

* https://superuser.com/questions/1635102/wsl2-trying-to-launch-vscode-with-code-results-in-error-please-install-missin
* https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode

```
 git config --global core.editor "code --wait"
```

[Interactive rebase](https://docs.github.com/en/get-started/using-git/about-git-rebase)

## 2. Use the `git log --oneline` to:

* view commits
* double check rebasing
* copy the commit sha

```
git log --oneline -15
```

## 3. Start interactive rebase

```
git log
git rebase -i [copy sha here]
```

## 4. Check consistent code

```
git diff [local] [remote]
git push origin [remote] --force-with-lease
```

Other Info

* [Writing commit messages](https://gist.github.com/robertpainsi/b632364184e70900af4ab688decf6f53)
