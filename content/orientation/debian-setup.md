# Software installation on Debian based system

## Some suggested apt-get commands

Most software should be installed via `conda` especially for bioinformatics (see later). 
Here are a few system-wide software better installed via `apt-get`. 
They work for Debian 9 or distributions based on Debian 9 (have not tested them on Ubuntu):

```
sudo apt-get install git curl unzip gzip bzip2 ca-certificates build-essential gfortran libgfortran-6-dev libgomp1 libgsl-dev libatlas3-base liblapack-dev libcurl4-openssl-dev libssl-dev
sudo apt-get install openssh-server
sudo apt-get install vim vim-gtk3
sudo apt-get install trash-cli
sudo apt-get install texlive-full python-pygments fonts-wqy-microhei ttf-wqy-microhei fonts-wqy-zenhei ttf-wqy-zenhei pandoc graphviz libmagickwand-dev nodejs
sudo apt-get install smartmontools lm-sensors htop
sudo apt-get install dos2unix tree sshpass
sudo apt-get clean
```

## Install latest R
I would not recommend it, at least at this point, to source compile R or to install R via `conda` 
(unless you have experiences with these in the past).
Here we use the Linux distribution's package repository to install. 

### Debian 9 upgrade

For R 3.5 on Debian 9, for example, create a file
```
sudo gvim /etc/apt/sources.list.d/cran.list
```
and add
```
deb http://cran.rstudio.com/bin/linux/debian stretch-cran35/
```
and save and exit. This specifies the path to the repository from which the Debian system gets the
latest R version (R 3.5) for its distribution (Debian 9, aka, Debian Stretch). Then add GPG key to
use the repository:
```
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
```

### Ubuntu 14.04 upgrade

Add the line
```
deb https://cloud.r-project.org/bin/linux/ubuntu trusty-cran35/
```
to `/etc/apt/sources.list.d/cran.list`, then
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9 
```

Finally, install it:
```
sudo apt-get update & sudo apt-get install r-base r-base-dev libatlas3-base
```

## Some suggested conda commands for bioinformatics tools

```
conda install -c bioconda cyvcf2 bedtools plink vcftools bcftools bedops tabix htslib
```

But other than bioinformatics toos, I generally prefer to use `pip` to install Python packages; I prefer not using `conda` for either Python or R packages.