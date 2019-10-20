# 5 Minutes git tutorial

## What is git? 

Git is a distributed version control system that not only automatically records the changes of each file, but also allows colleagues to collaborate and edit, so that users do not need to manage a bunch of files, and do not need to transfer files from / to colleagues. It keeps track of any change to any files (`git log` and `git blame`) in your project. It allows you to easily see history of modifications of a file, or restore the file to any time point in the history.

In the context of research I see `git` as a way to collaborate with yourself over time. With `git` you never have to (or allowed to) keep multiple versions of your script like `code_v1.R`, `code_version_20191015.py`, etc. It will of course also make it easy for others to contribute to your project in a trackable fashion.


## Install git

In command terminal type `git` to check if it is installed. If not please try search online for installation instructions 
specific to your operating system. One way to do it is to first [install conda](jupyter-setup) then use `conda install -c anaconda git
` to install `git`.

## Your first github project 

### Create a github repository and clone to local computer

We use "repo" to stand for "repository". You can simply understand it as an inventory of files. Files in this inventory will be managed by `git` to track changes, additions and modifications. 

To create a github repository online, visit `https://github.com/<you github account>` where `<your github account>` is your github username. Then under `repositories` tag click on `new repository`
to create a new repository --- you can call it `git-test`. You can choose either Private or Public repo it does not matter at this point. When creating the repo I suggest you choose the option to "Include a README.md" so github will create an actual repo on github with that README.md file. You can then download, make changes and contribute back to it.

To download, or "clone" in git's terminology, the repo you created on github.com to local computer,


```bash
$ git clone <URL to your repository on github>
```

You can then use `cd git-test` to navigate to the downloaded the `git-test` repository you just created online.

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
Here `-m` carries a message to explain this change. This will help others --- and more importantly, yourself --- to understand the change easily without looking into the code.

### Push your change to repo on github.com

The previous step wrote changes to a local copy of the git repo on your computer. To upload your changes to the online repository,

```
git push
```

It is very important that you `push` to the online repo to "finalize" your changes to the project.

## Contribute to this repository

First, clone the repo to your computer:

```
git clone https://github.com/xinhe-lab/lab-wiki
```

Then edit this document `public/orientation/README.md` and `public/orientation/5m-git.md` in ways you think you can improve it, and commit and push it back.

If you have previously cloned a copy to your computer, then before your edit **please update to the current version** that might
have been changed by others since you last cloned:

```
git pull
```

Then you can continue to contribute.

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
