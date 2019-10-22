# Welcome to the lab!

This page is created specifically for new comers to the lab. 

# Project resources

For a quick overview of what we are up to, [here](../project_resource) is a curated list of project
repositories of the lab. They are contributed by different past and current members in various styles,
but are all meant to follow good computational research practice that makes our work easy to share
and reproduce.

# Orientation tasks

## Task 1: git, github.com and markdown

We assume you are comfortable with command-line interface (on Linux or Mac). This orientation task involves obtaining the source code for this wiki, make changes and contribute your changes.
The source code of this wiki is on github so this will be a `git` exercise --- it means you will need to install `git` and clone this repo, make changes and push back to github which automatically
publishes your changes here.

But before you make any changes to the wiki, you should learn about using `git` if you haven't used it before. Under the `orientation` folder of this repo (that you should have been granted permission to at this point) there is a Markdown file called [`5m-git.md`](5m-git.html) for a 5-minutes tutorial on `git`. If you are not familiar with `git` please walk through that document to learn basic git; then modify the document to make improvements --- I wrote it up with little time leaving it unpolished as an orientation task to engage you in it. If you are already familiar with `git`, please also improve by either add to it whatever tips you've learned in the past that you find useful to mention here, or including links to materials you like --- but please still try to keep it a short 5-minutes read. Or, you can help improve a more advance tutorial [`git-tips.md`](git-tips.html) completing some of the `FIXME` tags I made on the document. Please make sure you use the best of your knowledge editing Markdown format files. Please format things nicely.

### Additional reading

- [Project communication via github issues](github-issues)
- [Additional git/github tips](git-tips)

## Task 2: organize your work

This task is about good computational biology research practice. 
You can optionally choose one of the task below, although option 1 is
highly recommended unless you have strong preference in Rstudio over JupyterLab.

Notice that if you have any issues with any procedures below, please [post an issue](github-issues#issues-for-bug-reports) at the github repository
of this wiki using "github issues".

### Option 1: Learn and use IPython notebook and JupyterLab

With IPython notebook + JupyterLab you should develop the practice of clearly documenting what you do in research,
and communicate your results as well as the code that generated them in a self-contained document. 
In particular, in a notebook you can put down notes in Markdown cells in between code cells to explain what you do. 
This may be less important to computer programmers but is very important to data scientists. 

An important reason I prefer Jupyter over Rstudio is because I recommand using [SoS suite](https://vatlab.github.io/sos-docs), a workflow system (pipeline tool) for batch data analysis and a multi-language notebook for interactive analysis, for your daily computing in research. You will find out more about it later in this orientation task.

Here are some tasks you should walk through:

1. [Install Jupyter Lab with SoS Suite](jupyter-setup), make sure you know (eg by learing from Google) how to lanch and write Python and R codes in it.
    - If you use Debian based Linux desktop (Debian or Ubuntu) [here are some recommendations](debian-setup) on setting up your machine.
2. Learn from these examples interactive data analysis using SoS Notebook (you can find and run them at: `http://128.135.144.117:8000`):
    - [Data exchange between languages](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/2_Data_Exchange.ipynb)
    - [SoS Notebook built-in commands](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/3_SoS_Magics.ipynb)
3. Learn from these examples the very basic usage of SoS Workflow (you can find and run them at: `http://128.135.144.117:8000`):
    - [An example to turn interactive analysis to workflow](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/HomePage_Example_2.ipynb)
    - [Another example to turn interactive analysis to workflow](https://github.com/vatlab/sos/blob/master/development/docker-demo/examples/JupyterCon18/4_Notebook_to_Workflow.ipynb)
    - [A simple SoS meta-script](sos_meta_script)
    - Please try to [reproduce this example on your computer](https://vatlab.github.io/sos-docs/doc/examples/WGS_Call.html) (source code [here](https://github.com/vatlab/sos-docs/blob/master/src/examples/WGS_Call.ipynb)). In particular, note how multiple samples are processed in parallel (`group_by` in SoS) and how intermediate results can be visualized within the workflow notebook. Also note how docker containers are used to execute the workflow to help avoid installing all software dependencies and ensuring reproducible results.
4. Learn from [this example](https://github.com/gaow/annotation-finemap-dsc) the suggested format to write and report computational analysis and post results on github.io via `jnbinder` script. The suggested format is as follows:
    1. **Title,** and in the same notebook cell **a brief one sentence summary** of what the notebook is about.
    2. **Motivation** or **Aims**: describe the problem under investigation.
    3. **Methods overview**: a high-level description of methods used to solve the problem.
    4. **Main conclusions** (not applicable to a pure workflow notebook): take home message from your investigations.
    5. **Data input and output** (if applicable): describe data used and generated from the notebook.
    6. The rest of the notebook: multiple sections of detailed steps, with interactive codes / workflows and narratives, as well as diagnostic summary statistics, plots and tables at each step.

Although I recommend SoS Notebook and SoS Workflow be the primary tool for daily computational research, I acknowledge there are limitations to using IPython notebooks in general for interactive analysis, [cf, this presentation](https://docs.google.com/presentation/d/1n2RlMdmv1p25Xy5thJUhkKGvjtV-dkAIsUXP-AL4ffI/mobilepresent?slide=id.g362da58057_0_1). However most of such issues can be avoided if you recognize them and develop good habits in using notebooks and not commit those pitfalls. Additionally, these limitations do not apply to when you use notebooks to develop SoS Workflows; and I always prefer writing small workflows over interactive notebooks --- as you hopefully have learned from the above tasks and agree that it is almost trivial to turn an interactive SoS notebook into an SoS workflow.

### Option 2: Learn and use Rstudio and workflowr

(to be updated)

## Task 3: Explore lab wiki

You are encouraged to explore the lab wiki checking out material on other pages. In particular, 

- [A list of learning material](../learning_center) on various topics in computational biology.
- [A list of "must know" shell commands](../computing_tutorial/shell-must-know.html).
- [This and that](../this_that), tips about life on campus, the city and places to visit & eat.
