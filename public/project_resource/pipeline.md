# Association mapping pipelines

## GWAS enrichment and fine-mapping

- [Pipeline for enrichment and fine-mapping](https://github.com/gaow/fine-mapping) using annotation and GWAS summary statistics. It implements enrichment analysis via `torus` and fine-mapping using summary statistics and LD panel from reference genotype files via `susieR`, `CAVIAR` and `FINEMAP`.
    - Gao Wang and Min Qiao

- [Multivariate Adaptive Shrinkage (MASH) pipeline](https://github.com/stephenslab/gtexresults) currently works on GTEx data. It contains a [summary statistics formatting pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb) and a [MASH association analysis pipeline](https://github.com/stephenslab/gtexresults/blob/master/workflows/fastqtl_to_mash.ipynb). To see these pipelines in action, here is [an example analysis on GTEx V8 European only samples](https://github.com/gaow/mnm-gtex-v8/blob/master/analysis/European_QTL.ipynb).
    - Gao Wang