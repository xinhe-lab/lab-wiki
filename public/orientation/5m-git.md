# 5 Minutes git tutorial

## What is git? 

Git is a distributed version control system that not only automatically records the changes of each file, but also allows colleagues to collaborate and edit, so that users do not need to manage a bunch of files, and do not need to transfer files from / to colleagues. It keeps track of any change to any files (`git log` and `git blame`) in your project. It allows you to easily see history of modifications of a file, or restore the file to any time point in the history.

In short with `git` you never have to (or allowed to) keep multiple versions of your script like `code_v1.R`, `code_version_20191015.py`, etc.

## Install git

In command terminal type `git` to check if it is installed. 

**FIXME**: please add link to resources that has helped you figuring out how git is installed.

## Your first github project 

### Create a github repository and clone to local computer

We use `repo` to stand for "repository". You can simply understand it as an inventory of files. Files in this inventory will be managed by `git` to track changes, additions and modifications. 

**FIXME**: give instructions on how to create a repository called `git-test` on your github.com account. 

Then, create an empty directory on your computer, say under a folder `~/tmp/12-Oct-2019`,
 
```bash
$ cd ~/tmp/12-Oct-2019
$ mkdir git-test
$ cd git-test
$ pwd
/home/gaow/tmp/12-Oct-2019/git-test
```

In practice you can name this folder to anything; here `git-test` is chosen to be consistent with the github.com
repository name.

Now use `git clone` to clone the repo you created on github.com to local computer,

**FIXME**

```bash
$ git clone ....
```

### Add files to the repository

Under this folder let's create a file called `example.md`, eg, using `echo` command

```bash
$ echo "Lab orientation task" > example.md
```

Then we use `git add` to add the file to the repo, and commit it,

```bash
$ git add example.md
$ git commit -am "Add an example"
[master (root-commit) 703f32e] Add an example
 1 file changed, 1 insertion(+)
 create mode 100644 example.md
```
Here `-m` carries a message to explain this change. This will help others -- and more importantly, yourself -- to understand the change easily without looking into the code.

### Push your change to repo on github.com

**FIXME**

## Beyond 5 minutes

Here is a list of most essential git commands,

```
git clone
git pull
git status
git diff
git add
git commit
git push
```

and a little more advanced about error recovery / giving up local changes

```
git checkout <filename>
git reset --hard
```

I think it is about 95% of the daily git commands I use! There are plenty material online to learn about these
commands. Please do so.

Additionally [here](https://github.com/ramanshah/intermediate_git) is a tutorial I find useful for learning more advanced usages.