# 5 Minutes git tutorial

## What is git? 

Git is a distributed version control system that not only automatically records the changes of each file, but also allows colleagues to collaborate and edit, so that users do not need to manage a bunch of files, and do not need to transfer files from / to colleagues. It keeps track of any change to any files (`git diff`, `git log` and `git blame`) in your project. It allows you to easily see history of modifications of a file, or restore the file to any time point in the history.

In the context of research I see `git` as a way to collaborate with yourself over time. With `git` you never have to (or allowed to) keep multiple versions of your script like `code_v1.R`, `code_version_20191015.py`, etc. It will of course also make it easy for others to contribute to your project in a trackable fashion.


## Install git

In command terminal type `git` to check if it is installed. If not please try search online for installation instructions 
specific to your operating system. One way to do it is to first [install conda](https://docs.conda.io/en/latest/miniconda.html) then use `conda install -c anaconda git` to install `git`.

## Your first github project 

### Create a github repository and clone to local computer

We use "repo" to stand for "repository". You can simply understand it as an inventory of files. Files in this inventory will be managed by `git` to track changes, additions and modifications. 

1. Create a GitHub repo online at `https://github.com/<your github account>'` where `<your github account>` is your github username.
2. Under `repositories` tag click `new repository` and type in any name for it. Here I suggest let's call it `*compbio-recipes*` (for reasons to be revealed later). You can either choose Private or Public repo it does not matter at this point. When creating the repository I sugget you select the option "Include a `README.md` file" so github will create an actual repo on github with that file instead of creating an empty repo. 
3. Now you can download, make changes and contribute back to it. To download (or "clone" in git's terminology) this repo to your local computer, type `git clone https://github.com/<your github account/compbio-recipes` in your shell command terminal.
4. Use `cd compbio-recipes` to navigate to the downloaded `compbio-recipes` repo.

### Add files to the repository

Under this folder let's create a file called `software-config.md` using the following commands

```bash
 $ echo "# Recipes for software configurations" > software-config.md
 $ git add software-config.md
 $ git commit -am "Add an example`
 [master (root-commit) 703f32e] Add an example
 1 file changed, 1 insertion(+)
 create mode 100644 software-config.md 
 ```

Here `-m` carries a message to explain this change. This will help others --- and more importantly, yourself --- to understand the change easily without looking into the code.

### Push your change to repo into GitHub.com

The previous step wrote changes to a local copy of the git repo on your computer. To upload your changes to the online repository you have to push your change to repo into GitHub. It is very important that you `push` to the online repo to "finalize" your changes to the project.

```bash
git push
```

### Update the local clone of repos

Update the local clone of repositories before editing and commiting new information,

```bash
git pull
```

## Use git in your daily research

Now you are in a good position to use git/github for various purposes! Let's start with notes keeping -- the repo you just created, `compbio-recipes`, can be used to keep your own notes of various "recipes" to setup your computational environment that are specific to your own computer and projects that we don't discuss in this wiki.

## Contribute to editing this wiki using git

To contribute to editing our wiki, first, clone the repo to your computer:

```bash
git clone https://github.com/xinhe-lab/lab-wiki
```

Then edit contents offline, commit and push after you are ready.

## Beyond 5 minutes

Here is a table of most essential git commands:

Subcommand | Description | Usage
:--------|:-------------|:-------
clone | This command clones repositories from github | `git clone https://github.com/gaow/lab-wiki` |
status | This command displays the state of your working directory and the staging area| `git status`|
diff | Let you see differences between the working tree and the index or a tree| `git diff <filename>`|
add | This serves to add the file to the repo. Every time you change a file add it to the repo using this command and commiting it | `git add <filename>` |
commit | Commit refers to saved changes. It will save the changes to file and add the description. The -m command creates a description of the file to help you and others understand the change in the code | `git commit -am "Add example"`|
push | To upload your local changes into your online repository | `git push origin master` |
pull | If you have cloned a previous copy to your computer before editing **update to the current version** that might have been changed by other since you last cloned| `git pull`|
checkout | Error recovery: give up changes to one file | `git checkout <filename>` |
reset | Error recovery: give up all uncommitted changes, reverting to the state of the last commit | `git reset --hard` |
log| Keeps track of any change to any file| `git log` |
blame | Keeps track of changes more specifically. It allows you to easily see the history of modifications of a file, or restore the file to any time point in the history | `git blame <filename>` |

I think it is about 95% of the daily git commands I use! There are plenty material online to learn about these commands. I suggest you experiment with / learn these commands as you use git, hopefully starting from now. 

Additionally [here](git-tips) are some (random) git tips I find useful for more advanced uses.
