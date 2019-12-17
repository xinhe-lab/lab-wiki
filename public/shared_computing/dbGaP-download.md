## Download data from dbGaP

A brief documentation to how dbGaP website is accessed & how to download data.

### Contact

Gao Wang, Dongyue Xie


### Data directory 

Files downloaded from dbGaP need to be decypted & extracted to usable formats. Files are first to be downloaded to some temporary directory, then processed and saved into a more permanent location. It is therefore suggested that on RCC Midway, for example, you download data to a temporary folder under `/scratch/midway2/$USER` then extract them to shared computational space `/project2/mstephens/` for sharing with the group. This documentation assumes this workflow.

### dbGaP access

1. Visit [dbGaP](https://www.ncbi.nlm.nih.gov/gap), click on `Controlled Access Data`, then login with your eRA Commons account. You'll see the dataset previously applied for and approved under the tab `Authorized Access -> My Requests`. 

2. In the column `Actions` click `Request Files` for the dataset you want to download. You should see two possibilites in two tabs:
    - "Phenotype and Genotype files"
    - "SRA data (reads and reference alignments)"


### Download "Phenotype and Genotype files"

Click on the tab `Phenotype and Genotype files`, then click / select data file names. After files you need are selected, create the data download request. You should be directed to a download instruction page. You should also receive an email confirmation which contains a link to this page.

For example, to download V8 eQTL release, use the Request for `Exchange Area` data then check the `+` sign to unfold directory and select data to download, in my case: 

```
gtex/exchange/GTEx_phs000424/exchange/analysis_releases/GTEx_Analysis_2017-06-05_v8/eqtl
```

The download instruction page offers several options but I find it most straightforward to use Linux command tool `ascp`. 

`ascp` can be download [for Linux](https://downloads.asperasoft.com/en/downloads/50) then install using `bash` command. It requires root to install which we don't have on RCC Midway. But it is easy to hack the installer: just open it with a text editor, eg `vim` and edit the first 10 lines of code to remove root requirement and change installation path, then save and run `bash` to install. You should find two files under a `bin` folder in the path you just edited to the installer: 1) the executable `ascp` and 2) the license file `aspera-license`. If you don't know how to hack it, you can use a version I got on Midway `/project2/mstephens/software/ascp` (the license file sits in the same directory as `ascp`). Additionally you need an ssh key which [comes from the installation](https://www.ibm.com/support/pages/downloading-data-ncbi-command-line#locations) but again I provide it at `/project2/mstephens/software/asperaweb_id_dsa.openssh`. Having `ascp` executable alone without these additional files is not going to work.

Now you can run the download command. On the instruction page the command might look like:

```
"%ASPERA_CONNECT_DIR%\bin\ascp" -QTr -l 300M -k 1 -i "%ASPERA_CONNECT_DIR%\etc\asperaweb_id_dsa.openssh" -W A7A8C74EB00A14C92826A8EC64785904771847404B340486B977DD32F5F3701B399760E2328AA4F43ADB2A6E66A2EFA22D dbtest@gap-upload.ncbi.nlm.nih.gov:data/instant/gaowang/72550 .
```

but in our case you with `ascp` set up as previously discussed, you should change it to:

```
/project2/mstephens/software/ascp -QTr -l 300M -k 1 -i /project2/mstephens/software/asperaweb_id_dsa.openssh -W A7A8C74EB00A14C92826A8EC64785904771847404B340486B977DD32F5F3701B399760E2328AA4F43ADB2A6E66A2EFA22D dbtest@gap-upload.ncbi.nlm.nih.gov:data/instant/gaowang/72550 /scratch/midway2/dyxie/dbGaP/
```

where in this example `/scratch/midway2/dyxie/dbGaP/` is your previous setup for download directory. Then you will find your downloaded file under a folder `72550` under that directory, as implied in commands above.

**Note: we need absolute path to `asperaweb_id_dsa.openssh` not relative path such as `./` -- that won't work!** Ask Kushal he learned the lesson the hard way.

The downloaded data have `.ncbi_enc` file extensions. We need `sra-toolkit` to decode the data next. 

### Install `sra-toolkit`

If use Anaconda on midway2, then it does not allow user to install `sra-toolkit`. So we need to install the conda by ourthelves: 

First download and install `Miniconda3` if you haven't done that before. Replace `%Download address%` to the download link that [you can find here](https://docs.conda.io/en/latest/miniconda.html):


```
wget %Download address%

```
Then run 

```
bash Miniconda3-latest-Linux-x86_64.sh -bfp /scratch/midway2/$USER/miniconda3
echo "export PATH=/scratch/midway2/$USER/miniconda3/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc
```

Check if using the right conda

```
which conda
```

Then the sra tool can be installed via:

```
conda install -c bioconda sra-tools 
```

### Set dbGaP repository key for the project

In order to decrypt, a dbGaP repository key is also required. The key is provided in a file with suffix “.ngc”. It can be obtained from two places in PI's dbGaP account.

1. The first place is the project page under “My Projects” tab, through a link named “get dbGaP repository key” in the “Actions” column. The key downloaded from here is valid to all downloaded data under the project.
2. The second place is the download page under “Downloads” tab, through a link named “get dbGaP repository key in the “Actions” column.

I get the key from the first place. Then config the key by running command 

```
vdb-config --import ~/prj_3253_D17102.ngc
```

After configuration, manually change the `mkfg` file:

```
vim ~/.ncbi/user-settings.mkfg 
```

Then change the root to the data folder you store the data. For example, here, the download directory is `/scratch/midway2/dyxie/dbGaP/`. See below the change I made to point to that directory.

```diff
15c17
< /repository/user/protected/dbGaP-3253/root = "/home/dyxie/ncbi/dbGaP-3253"
---
> /repository/user/protected/dbGaP-3253/root = "/scratch/midway2/dyxie/dbGaP/"
```

Finally, run 

```bash
cd /path/to/downloaded/data # in the above setting it is: /scratch/midway2/dyxie/dbGaP/72250
vdb-decrypt --decrypt-sra-files . /path/to/destination -v # we can use somewhere under /project2/mstephens for the otput destination directory
```

Then all the `*.ncbi_enc` files under `/path/to/downloaded/data` will be decrypted and the original `*.ncbi_enc` files will be automatically removed.

### Download "SRA data (reads and reference alignments)"

Before this, please follow instructions above in sections "Install `sra-toolkit`" and "Set dbGaP repository key for the project".

Then, click 'SRA RUN selector', then check 'data-type(Run)' from the Filters List on the left side. Then check `rna`.

Select all the sra files you want to download and click 'Selected' in the Select session. Now download the `Accession List`. The downloaded list is named `SRR_Acc_List.txt`, in which are a list of SRR IDs. 

To download these files and convert to BAM files, run the folloiwng command, replace `xyz` with the ID. 

```
cd /path/to/download/dir
prefetch xyz
sam-dump xyz.sra | samtools view -Sb > /path/to/destination/xyz.bam
```
