# JupyterLab + SoS Suite setup

## Install miniconda3 the Python development environment

We recommend using `miniconda` over `anaconda` and customize your installation as needed after install this minimal version of `conda`. 
To install please follow instructions [on this page](https://docs.conda.io/en/latest/miniconda.html). Please go for `miniconda3`.

After you successfully installed the latest version of `miniconda3`, please follow prompts below to setup
a [JupyterLab + SoS Suite environment](https://doi.org/10.1371/journal.pcbi.1006843) for daily computing.

## Jupyter Notebook kernels

### Bash kernel

```
pip install bash_kernel --no-cache-dir
python -m bash_kernel.install
```

### Markdown kernel

```
pip install markdown-kernel --no-cache-dir
python -m markdown_kernel.install 
```

### R kernel

```
R --slave -e "install.packages('IRkernel'); IRkernel::installspec()"
```

### A ipynb to docx converter

This will allow you to save `ipynb` file to a `docx` file for various purposes
```
pip install jupyter-docx-bundler --no-cache-dir
jupyter bundlerextension enable --py jupyter_docx_bundler --sys-prefix
```

### nbdime to work with git

This will override the default `git diff` and display better the changes to IPython notebooks
```
pip install nbdime
nbdime config-git --enable --global
```

## SoS Suite

```
pip install docker markdown wand graphviz imageio pillow nbformat jupyterlab feather-format --no-cache-dir
pip install sos sos-notebook sos-r sos-python sos-bash -U --no-cache-dir
python -m sos_notebook.install
jupyter labextension install transient-display-data
jupyter labextension install jupyterlab-sos
```

If the last command fails and complains about missing `nodejs` you can use `conda` to install it,

```
conda install -c conda-forge nodejs
```

## Install Docker

We use Docker a lot running various software that are hard to install. SoS also provides an interface to run Docker images. 

To install Docker (tested on Linux but might work on Mac too -- can someone confirm and fix?),

- Run commands below:

```
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

- Log out and log back in (no need to reboot computer)