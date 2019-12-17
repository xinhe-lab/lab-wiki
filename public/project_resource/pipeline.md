# Made by He Lab Members

## GWAS enrichment and fine-mapping

- [Pipeline for enrichment and fine-mapping](https://github.com/gaow/fine-mapping) using annotation and GWAS summary statistics. It implements enrichment analysis via `torus` and fine-mapping using summary statistics and LD panel from reference genotype files via `susieR`, `CAVIAR` and `FINEMAP`.
    - Gao Wang and Min Qiao

- [Multivariate Adaptive Shrinkage (MASH) pipeline](https://github.com/stephenslab/gtexresults) currently works on GTEx data. It contains a [summary statistics formatting pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb) and a [MASH association analysis pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb). To see these pipelines in action, here is [an example analysis on GTEx V8 European only samples](https://github.com/gaow/mnm-gtex-v8/blob/master/analysis/European_QTL.ipynb).
    - Gao Wang
  
## Mendelian Randomization
  
  - [CAUSE, other MR methods, and Genetic correlation ](https://jean997.github.io/cause/gwas_pairs_2.html). This pipeline will help you run CAUSE, a bunch of othe MR methods and genetic correlation on pairs of GWAS traits. It is possible to specify the methods so you could only do genetic correlation, or only CAUSE or some subset. It is also possible to specify all pairs or only a subset of pairs. The pipeline starts with raw data (with some mild restrictions), formats, and runs the methods. 

## Somatic/germline mutation calling

- [cancerWGS](https://github.com/aselewa/cancerWGS_pipeline). A pipeline for calling germline and somatic mutations from whole-genome sequencing data (WGS). The pipeline takes in fastq files from normal and tumor sequencing data from the same patient. Edit the config file to point to your reference genome files. This pipeline follows the GATK4 best practices for calling somatic mutations.

# Made by Other People

- [ANNOVAR](http://wannovar.wglab.org/) A web server for ANNOVAR

- [Michigan Imputation Server](https://imputationserver.sph.umich.edu/index.html#!) A web server for fast and efficient imputation and phasing of genotype data.
