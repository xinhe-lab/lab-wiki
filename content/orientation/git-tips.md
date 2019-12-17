## Discuss about merge conflict

You can run into a merge conflict when you commit a change and someone else has made changes to the file. When you face this type of merge conflicts there are two options.

1. Clean the file manually 
	* Open the file using a text editor and modify the conflicting parts of the file that will appear marked with `>>>  <<<`. The file won't be usable unless you edit it to resolve these conflicts.
	* Then commit and push this new file into the repository.

2. Remove the local copy of the GitHub repository
	* Make sure your local clone does not have any other changes you wish to commit.
	* This means that is completely safe to get rid of everything you have locally.
	* Then remove the local clone and clone a fresh copy from GitHub.

## Discuss about ".gitignore"

FIXME: Give examples to exclude tmp files, cache files and large data-sets using wildcard pattern ([here is an example](https://github.com/stephenslab/gtexresults/blob/master/.gitignore)).

## How to setup github ssh keys to pull and push without password

FIXME.

## Why and how to use git branches and pull request

git branck and pull requests are useful for collaboration with others; but in my view they are even more useful for collaborating with yourself in research setting.

Suppose you want to try something completely different in research --- eg some alternative implementation of a computational task that may or may not improve
over existing approach, or an idea you don't know if it will work. That is when you should create a different git `branch` and try things there. If it works
you can send in a pull request to merge the branches so it become officially adopted. Another good thing about branch is that you can compare all at once 
differences in your branch from multiple commits so you know what exactly you have changed.

Please search online and learn about using branches and pull request. I suggest you can hold it off until during your research project you run into the scenario I described above. 
That will be a very good motivating case for you to start learning it

## Links to git tutorials 

- [Intermediate git](https://github.com/ramanshah/intermediate_git), a tutorial I find useful if you want to learn git in a more systematic way.
