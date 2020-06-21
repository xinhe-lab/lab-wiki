## GWAS Summary Statistics in LD-score format

Collections of GWAS summary statistics in LD-score `.sumstats` format

### Contact
Kevin Luo (kevinlkx@gmail.com)

### Location

RCC: 
`/project2/xinhe/kevinluo/GWAS/GWAS_summary_stats/`

### Source

The directory contains collections of GWAS summary statistics in [`.sumstats`](https://github.com/bulik/ldsc/wiki/Summary-Statistics-File-Format) format, which could be used in `LDSC` and `TWAS/FUSION` analysis. The [page](https://kevinlkx.github.io/analysis_pipelines/GWAS_sumstats.html) has more detail instructions about these datasets.

You can convert your own GWAS summary statistics to the `.sumstats` format using `munge_sumstats.py` from `LDSC` software, see this [page](https://github.com/bulik/ldsc/wiki/Summary-Statistics-File-Format) for more details. 

Note: if your `munge_sumstats.py` command seems to run forever, you may need to add an option `--chunksize 500000` to `munge_sumstats.py` command (https://github.com/bulik/ldsc/issues/145).

