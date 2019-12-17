# Welcome to the lab!

This page is created specifically for new comers to the lab. 


# Project resources

For a quick overview of what we are up to, [here](../project_resource) is a curated list of project
repositories of the lab. They are contributed by different past and current members in various styles,
but are all meant to follow good computational research practice that makes our work easy to share
and reproduce.

# Orientation tasks

## Task 1: Add yourself to our slack workspace

You should join our [slack](https://slack.com) workspace at `xinhe-lab.slack.com`. 
Please ask Xin to send you an invite.

After you are added to the workspace, please find these channels to join:

- `papers`
- `readinggroup`
- `programming`
- `seminars`

Here you can communicate with others in the lab via instant messaging and work on projects together in separate project channels. 

### Slack tips

1. It would be great if you could upload a photo of you (or your pet) to your slack profile.
2. Notifications: Under `Preference -> Notifications` you can configure notifications behavior for incoming new messages. I suggest choose notification option "Direct messages, mentions and keywords". Also enable "Send email notification" under "When inactive on desktop" option.
3. [Slack desktop app is available](https://slack.com/downloads) and is recommended because that will keep slack running on the background, for multiple slack groups you join. There is also a phone app you can choose to install.
4. Slack uses mostly markdown language to edit text, as you will learn in the next orentation task.

## Task 2: git, github.com and markdown

We assume you are comfortable with command-line interface (on Linux or Mac). This orientation task involves obtaining the source code for this wiki, make and contribute your changes.
The source code of this wiki is on github so this will be a `git` exercise --- it means you will need to install `git` and clone this repo, make changes and push back to github which automatically
publishes your changes here.

Please send your github handler to Gao Wang to request adding you to [the lab github account](https://github.com/xinhe-lab), and to have your permission granted for viewing and editing source file of this wiki. If you do not have a github.com account, please register one.

But before you make any changes to the wiki, you should learn about using `git` if you haven't used it before. Under the `orientation` folder of this repo (that you should have been granted permission to at this point) there is a Markdown file called [`5m-git.md`](5m-git) for a 5-minutes tutorial on `git`. If you are not familiar with `git` please walk through that document to learn basic git. If you are already familiar with `git`, please take a look and help improve a more advance tutorial [`git-tips.md`](git-tips) completing some of the `FIXME` tags I made on the document, or adding to it whatever tips you've learned in the past that you find useful to mention here. **Please make sure you use the best of your knowledge editing Markdown format files, that is, format things nicely and logically**.


### Text editor

Here is a personal suggestion: I use `gvim` for many years before I switched to [VS Code](https://code.visualstudio.com/) text editor --- yes it is from Microsoft but it is cross-platform and is good! I now use VS Code with Vim binding (an Extension you can find in VS Code Extension Marketplace) so I can still use keyboard conventions that I'm familiar with.

To open a particular folder (eg a github local clone) on your computer from command terminal:

```bash
cd <path to the folder>
code ./
```

### Additional reading

- [Project communication via github issues](github-issues)
- [Additional git/github tips](git-tips)

## Task 3: organize your research

This task is about good computational biology research practice.
It is highly recommended that all computational
procedures in your daily research should be documented, well organized and version controlled (using git) for review at any point.

You can optionally choose one of the task below for organizing your research using Notebooks or Rmarkdown files.

### Option 1: Learn and use IPython notebook and JupyterLab

With IPython notebook + JupyterLab you should develop the practice of clearly documenting what you do in research,
and communicate your results as well as the code that generated them in a self-contained document. 
In particular, in a notebook you can put down notes in Markdown cells in between code cells to explain what you do. 
This may be less important to computer programmers but is very important to data scientists. 

An important reason I (Gao Wang) prefer Jupyter over Rstudio is because I recommand using [SoS suite](https://vatlab.github.io/sos-docs), a workflow system (pipeline tool) for batch data analysis and a multi-language notebook for interactive analysis, for your daily computing in research. You will find out more about it later in this orientation task.

Here are some tasks you should walk through:
 
1. [Install Jupyter Lab with SoS Suite](jupyter-setup), make sure you know (eg by learing from Google) how to lanch Bash, R and Python notebooks and correspondingly write codes in them.
    - If you use Debian based Linux desktop (Debian or Ubuntu) [here are some recommendations](debian-setup) on setting up your machine.
2. Learn from these examples interactive data analysis using SoS Notebook that allows for multiple languages inside one notebook (you can find and run them at: `http://128.135.144.117:8000`):
    - [Data exchange between languages](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/2_Data_Exchange.ipynb)
    - [SoS Notebook built-in commands](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/3_SoS_Magics.ipynb)
3. Convert notebooks to a research website using [`jnbinder` script](https://github.com/vatlab/jnbinder). Please follow instructions on `jnbinder` repo to create a research website using some IPython notebooks you have.
4. Learn from [this example](https://github.com/gaow/annotation-finemap-dsc) the suggested format to write and report computational analysis. This is a demo of a research website `jnbinder` created. The suggested format is as follows:
    1. **Title,** and in the same notebook cell **a brief one sentence summary** of what the notebook is about.
    2. **Motivation** or **Aims**: describe the problem under investigation.
    3. **Methods overview**: a high-level description of methods used to solve the problem.
    4. **Main conclusions** (not applicable to a pure workflow notebook): take home message from your investigations.
    5. **Data input and output** (if applicable): describe data used and generated from the notebook.
    6. The rest of the notebook: multiple sections of detailed steps, with interactive codes / workflows and narratives, as well as diagnostic summary statistics, plots and tables at each step.

In your future daily research you will be expected to use SoS Notebook to analyze data, document your workflows with suggested analysis report format, and make them available as websites to share with your colleagues. 
We host a private webserver and provide instructions to configure your github repository to automatically publish websites to the server as soon as you push to the repository.

Additionally, if you are interested in bioinformatics workflow system, you can optionally complete the following tasks on Bioinformatics Workflow System:

1. Learn from these examples the very basic usage of SoS Workflow (you can find and run the first 2 at: `http://128.135.144.117:8000`):
    - [An example to turn interactive analysis to workflow](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/HomePage_Example_2.ipynb)
    - [Another example to turn interactive analysis to workflow](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/4_Notebook_to_Workflow.ipynb)
2. Please try to [reproduce this example on your computer](https://vatlab.github.io/sos-docs/doc/examples/WGS_Call.html) (source code [here](https://github.com/vatlab/sos-docs/blob/master/src/examples/WGS_Call.ipynb)). In particular, note how multiple samples are processed in parallel (`group_by` in SoS) and how intermediate results can be visualized within the workflow notebook. Also note how docker containers are used to execute the workflow to help avoid installing all software dependencies and ensuring reproducible results.

Although I recommend SoS Notebook and SoS Workflow be the primary tool for daily computational research, I acknowledge there are limitations to using IPython notebooks in general for interactive analysis, [cf, this presentation](https://docs.google.com/presentation/d/1n2RlMdmv1p25Xy5thJUhkKGvjtV-dkAIsUXP-AL4ffI/mobilepresent?slide=id.g362da58057_0_1). However most of such issues can be avoided if you recognize them and develop good habits in using notebooks and not commit those pitfalls. Additionally, these limitations do not apply to when you use notebooks to develop SoS Workflows; and I always prefer writing small workflows over interactive notebooks --- as you hopefully have learned from the above tasks and agree that it is almost trivial to turn an interactive SoS notebook into an SoS workflow.

### Option 2: Learn and use Rstudio and workflowr

(to be updated)

### Additional reading

- How to organize computational research projects
    - [This paper](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1000424), [this paper](http://journals.plos.org/ploscollections/article?id=10.1371%2Fjournal.pcbi.1004385) and [this post](http://nicercode.github.io/blog/2013-04-05-projects/).

## Task 4: Explore lab wiki

You are encouraged to explore the lab wiki checking out material on other pages. In particular, 

- [A list of learning material](../learning_center) on various topics in computational biology.
- [A list of "must know" shell commands](../computing_tutorial/shell-must-know.html).
- [Resource sharing guideline](../project_resource/sharing-guideline).
- [This and that](../this_that), tips about life on campus, the city and places to visit & eat.
