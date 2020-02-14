# Git Lunch-n-Learn Cheat Sheet

## Prerequisites

Clone this repo


```
git clone git@github.com:tobiasb/git-lunch-n-learn.git
cd git-lunch-n-learn
```

Clone sample repos

`./clone-sample-repositories.sh`

## Committing

- A commit has an ID, knows about its parent commit(s), author, etc.
- Forms a linked list
- Create commit message in the format: "When applied, this commit will `<commit message>`"

**Demo:**
```
cd secret-santa-sms-a

subl requirements.txt
< update version of pytest >
git status
git add requirements.txt
git status
git commit -m "Update version of pytest"
git status
git push
< show tree in GUI >
```

- Show partial staging using GUI tool

#### Lifecycle of a local change

![](https://git-scm.com/book/en/v2/images/lifecycle.png)
(source: https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository)

## Branching

- Pointer to a commit
- Remote vs. Local

**Demo:**
```
git branch improve-tests
git checkout improve-tests

subl test_secret_santa_generator.py
< add test case >

subl requirements.txt
< update version of pytest >

< commit changes using GUI >

git push --set-upstream origin improve-tests
```


## Merging

- Fast-forward vs. merge commit

**Demo:**
```
git checkout master

git merge improve-tests
git reset origin/master --hard
git merge improve-tests --no-ff

git push
```

## Resetting

- Hard vs. Soft
- Reference commit, branch, tag

**Demo:**
```
git branch my-branch

git reset version-1.0
git reset master --hard
git reset 26a6c1b3e259dad24ec43a46baf2a519164c6a3f
```

### Tags

- More pointers
- Reference hash, branch name, tag name

**Demo:**
```
git tag <tag name>
git tag <tag name> <commit hash>
git tag <tag name> <branch name>
git push --tags
```

## Rebasing

**Demo:**
```
git checkout master
git pull 

git branch my-branch
git checkout my-branch
git push --set-upstream origin my-branch

git checkout master
git apply ../../patches/patch01.diff && git commit -am "Improve file handling" && git push

git checkout my-branch
git apply ../../patches/patch02.diff && git commit -am "Update Twilio package"
git apply ../../patches/patch03.diff && git commit -am "Improve documentation"
git push

< show my-branch relative to master in GUI >

git rebase master

<show what git push would do >

git push -f
```

## Resolving Conflicts

## Squashing

## Stashing

## Ignoring files/directories


.gitignore

## Tooling

- Try to master the command line
- Use the GUI 

## Cherry picking

# Resetting local repo

`./cleanup-sample-repositories.sh`

# Future topics

- Remotes
- Configuration
- Hooks
- Submodules