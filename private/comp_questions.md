Questions about project workflow
================================

These are some questions you might ask yourself to get a sense of your
workflow.

The main languages I work in are:
---------------------------------

-   R
-   Python
-   C/C++
-   Bash
-   SQL

I think of my project mostly in terms of:
-----------------------------------------

-   The code that I write
-   The underlying mathematical/statistical model
-   What I\'ll need for the manuscript/meeting/talk
-   The feedback I\'ve most recently gotten

My code is organized mostly in terms of:
----------------------------------------

-   The procedural steps involved (e.g `step_1.sh`, `step_2.sh`, ..., or
    `run_setup()`, `run_method()`,...)
-   The underlying mathematical/statistical model (e.g
    `sample_posterior.R`, `assign_point_to_region.py`)
-   What I\'ll need for the manuscript/meeting/talk (e.g
    `generate_fig_1.R`)
-   The feedback I\'ve most recently gotten (e.g
    `MyMethod_noConfounding_ukbiobank_v4.Rmd`)

When I\'m \"coding\" I am mostly:
---------------------------------

-   Reading someone else\'s code
-   Changing code I\'ve already written
-   Writing new code

If there\'s a piece of code I\'ve written that I use in multiple places I
-------------------------------------------------------------------------

-   Copy/paste it
-   Put it in a file and \"`source`\" it when I need it
-   Put it in a package/library

For a given project of mine, I can name the files and folders that relate to that project:
------------------------------------------------------------------------------------------

For a given file and folder, I can name the project that relates to that file and folder:
-----------------------------------------------------------------------------------------

The main tools I use to organize my project are:
------------------------------------------------

-   Code comments
-   Workflowr
-   Git/Github

My code is easy to run:
-----------------------

-   For me
-   For collaborators/other lab members

To rerun the \"pipeline/analysis/workflow\" with a different (identically formatted) dataset I have to change
-------------------------------------------------------------------------------------------------------------

-   1 line in 1 file
-   1 line in several files
-   Several lines in several files

For someone else to rerun my analysis (on rcc) they must:
---------------------------------------------------------

-   Load the correct modules
-   Load modules and install packages (using pip or cran)
-   Create a conda environment
-   Manually install one or several pieces of software

To make sure my code doesn\'t contain mistakes I:
-------------------------------------------------

-   Write tests
-   Manually run examples where I know the right answer
-   Wait for someone (or the computer) to tell me there\'s a bug

When I see an error I\'ve never seen before I:
----------------------------------------------

-   Google it/stack overflow
-   Use a debugger
-   Read the documentation for the function/library
-   Ask somebody

To run code on the cluster I usually:
-------------------------------------

-   Use rstudio server
-   Run an interactive job and do everthing in the command line
-   Use jupyterhub/jupyterlab
-   Write batch scripts and watch them (or get an email) to see if they
    failed
-   Use snakemake/dsc

I know what parts of my code take the longest to run/use the most memory
------------------------------------------------------------------------

I can guess to within one or two orders of magnitude:
-----------------------------------------------------

-   The memory requirements of my code
-   The number of files it will generate
-   The runtime

My text editor has:
-------------------

-   Syntax highlighting for my language(s)
-   Static analysis (It warns me about potential bugs in my
    code/formatting issues)
-   Integration with git/github

To get code on and off the cluster I:
-------------------------------------

-   Write code on the cluster itself (i.e rstudio server,emacs,
    jupyterhub)
-   Write code on my laptop/desktop and copy it over manually (e.g ftp,
    scp)
-   Write code on my laptop/desktop and sync it with github

There are files on the cluster that I don\'t want to delete because:
--------------------------------------------------------------------

-   They would be difficult to regenerate because the code took a long
    time to run
-   They would be difficult to regenerate because the code that
    generated it is gone/lost

My \"main\" project is currently X percent \"done\":
----------------------------------------------------

-   What would the answer to this question have been 1 month ago?
