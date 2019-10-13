# Welcome to the lab!

This page is created specifically for new comers to the lab. 

# Project resources

For a quick overview of what we are up to, [here](../project_resource) is a curated list of project
repositories of the lab. They are contributed by different past and current members in various styles,
but are all meant to follow good computational research practice that makes our work easy to share
and reproduce.

# Orientation tasks

## Task 1: git, github.com and markdown

The source code of this wiki is on github. We assume you are comfortable with command-line interface (on Linux or Mac). As you've probably figured out already, you need to install `git` and clone this repo, make changes and push back to here. It's even better if you can "fork" it to your own github account as a private repo and send in pull requests.

Your first task is to get familiar with making changes via git in this repo. The end goal of this orientation task is to produce a quick start document that future newcomers with zero git/github experience can read it and get started quickly.
​
Under the `orientation` folder of this repo there is a [`5m-git.md`](5m-git.html) for a 5-minutes tutorial on `git`. If you are not familiar with `git` please walk through that document to learn basic git. If you are already familiar with `git`, please edit that document to improve it -- either add to it whatever tips you've learned in the past that you find useful to mention here, including links to materials you find useful. Or, you can complete some of the `FIXME` marks I made to the document. Please keep the instructions minimal because we want to keep the tutorial short as a "5-minutes tutorial to git and github".
​
Please make sure you use the best of your knowledge editing Markdown format files (the `5m-git.md` is a Markdown file). Please format things nicely.

### Additional reading

- [Project communication via github issues](github-issues)
- [Additional git/github tips](git-tips)

## Task 2: organize your work

This task is about good computational biology research practice. 
You can optionally choose one of the task below, although option 1 is
highly recommended if you currently don't have a preference between JupyterLab
and Rstudio.

### Option 1: Learn and use IPython notebook and JupyterLab

With IPython notebook + JupyterLab you will be able to explain what you do in research and communicate results along with the code that generated them. In particular, in a notebook you can put down notes in Markdown cells in between code cells. This may be less important to computer programmers but is very important to data scientists. 

Another important reason I prefer Jupyter over Rstudio is because I recommand using [SoS suite](https://vatlab.github.io/sos-docs), a workflow system (pipeline tool) for batch data analysis and a multi-language notebook for interactive analysis, for your daily computing in research.

Here are the four action items:

1. [Install and launch Jupyter Lab with SoS Suite](jupyter-setup.html), make sure you know (eg by learing from Google) how to write Python and R codes in it.
    - If you use Debian based Linux desktop (Debian or Ubuntu) [here are some recommendations](debian-setup) on setting up your machine.
2. [TO BE ADDED] Learn from these examples interactive data analysis using SoS Notebook.
3. [TO BE ADDED] Learn from these examples the very basic usage of SoS Workflow.
4. [TO BE ADDED] Learn from this example the required format to write and report computational anlaysis by posting results on github.io.

Although I recommend SoS Notebook and SoS Workflow be the primary tool for daily computational research, I acknowledge there are limitations to using IPython notebooks in general for interactive analysis, [cf, this presentation](https://docs.google.com/presentation/d/1n2RlMdmv1p25Xy5thJUhkKGvjtV-dkAIsUXP-AL4ffI/mobilepresent?slide=id.g362da58057_0_1). However most of such issues can be avoided if you recognize them and develop good habits in using notebooks and not commit those pitfalls. Additionally, these limitations do not apply to when you use notebooks to develop SoS Workflows; and I always prefer writing small workflows over interactive notebooks -- as you will learn down the road it is almost trivial to turn an interactive SoS notebook into an SoS workflow.

### Option 2: Learn and use Rstudio and workflowr

FIXME.

## Task 3: Explore lab wiki

You are encouraged to explore the lab wiki checking out material on other pages. In particular, 

- [A list of learning material](../learning_center) on various topics in computational biology.
- [A list of "must know" shell commands](../computing_tutorial/shell-must-know.html).
- [This and that](../this_that), tips about life on campus, the city and places to eat.