# Made by He Lab Members

## GWAS enrichment and fine-mapping

- [Pipeline for enrichment and fine-mapping](https://github.com/gaow/fine-mapping) using annotation and GWAS summary statistics. It implements enrichment analysis via `torus` and fine-mapping using summary statistics and LD panel from reference genotype files via `susieR`, `CAVIAR` and `FINEMAP`.
    - Gao Wang and Min Qiao

## eQTL association mapping

- [Multivariate Adaptive Shrinkage (MASH) pipeline](https://github.com/stephenslab/gtexresults) currently works on GTEx data. It contains a [summary statistics formatting pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb) and a [MASH association analysis pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb). To see these pipelines in action, here is [an example analysis on GTEx V8 European only samples](https://github.com/gaow/mnm-gtex-v8/blob/master/analysis/European_QTL.ipynb).
    - Gao Wang

## Mendelian Randomization

  - [CAUSE, other MR methods, and Genetic correlation ](https://jean997.github.io/cause/gwas_pairs_2.html). This pipeline will help you run CAUSE, a bunch of othe MR methods and genetic correlation on pairs of GWAS traits. It is possible to specify the methods so you could only do genetic correlation, or only CAUSE or some subset. It is also possible to specify all pairs or only a subset of pairs. The pipeline starts with raw data (with some mild restrictions), formats, and runs the methods.

## Somatic/germline mutation calling

- [cancerWGS](https://github.com/aselewa/cancerWGS_pipeline). A pipeline for calling germline and somatic mutations from whole-genome sequencing data (WGS). The pipeline takes in fastq files from normal and tumor sequencing data from the same patient. Edit the config file to point to your reference genome files. This pipeline follows the GATK4 best practices for calling somatic mutations.

## S-LDSC (stratified LD score regression)

- [Pipeline for S-LDSC analysis](https://kevinlkx.github.io/analysis_pipelines/sldsc_pipeline.html). The pipeline lists example steps to install the `LDSC` software and run `S-LDSC` (stratified LD score regression) analysis to partition heritability by functional annotations using genome-wide association summary statistics. This pipeline basically follows the [tutorial](https://github.com/bulik/ldsc) from the authors. You can find some more examples/tutorials: 1) [running S-LDSC on GTEx eQTL MaxCPP annotations](https://kevinlkx.github.io/analysis_pipelines/sldsc_example_GTEx_QTLs.html) from Hormozdiari et al. Nature Genetics 2018 paper 2) [running S-LDSC on neuron ATAC-seq annotations](https://kevinlkx.github.io/analysis_pipelines/sldsc_example_neuron_ATACseq.html) from Zhang et al. Science 2020 paper.


## TWAS/FUSION

- [Pipeline for TWAS analysis using FUSION](https://kevinlkx.github.io/analysis_pipelines/twas_fusion_pipeline.html). `FUSION` performs transcriptome-wide (or any other ome-wide) association study by predicting functional/molecular phenotypes into GWAS using only summary statistics. This pipeline basically follows the [tutorial](https://github.com/gusevlab/fusion_twas) from the authors. 

