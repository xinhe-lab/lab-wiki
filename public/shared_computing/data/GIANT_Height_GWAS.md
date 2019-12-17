## GIANT Adult Height GWAS Summary Data and Estimated LD

The single-SNP summary statistics and estimated LD matrices for adult human height (Wood et al, 2014).

### Contact
Jane Doe

### Location

PPS server:

`/mnt/gluster/data/internal_supp/giant_height_2014`

### Source

The processed data are derived from the following datasets.

- GWAS summary statitics: `https://www.broadinstitute.org/collaboration/giant/index.php`
- 1000 Genomes EUR haplotypes (phase 1): `http://csg.sph.umich.edu//abecasis/MaCH/download/1000G.2012-03-14.html`
- HapMap CEU genetic maps (rel#24): `https://mathgen.stats.ox.ac.uk/wtccc-software/recombination_rates/genetic_map_b36_CEU.tgz`

### File Summary

The GWAS summary data file `height2014_analyzed_autosome_chr_*.txt` has the following columns.

- `MarkerName`: The dbSNP Name 
- `Allele1`: The 1st Allele (hg19 + strand)
- `Allele2`: The 2nd Allele (hg19 + strand) 
- `Freq.Allele1.HapMapCEU`: The Allele Frequency of `Allele1` in the HapMap CEU Population 
- `b`: Estimated Single-SNP Effect Size
- `SE`: Standard Error
- `p`: Single-SNP P-value 
- `N`: Sample Size
- `pos`: Physical Position (hg19)
- `chr`: Chromosome ID

The folder `estimated_ld` contains the estimated LD (i.e. **correlation**) matrices, using the shrinkage estimator from Wen and Stephens (2010).

- `R.chr*.mat`: the hard threshold for small off-diagonal entries is 1e-8.
- `R.chr*.3.mat`: the hard threshold for small off-diagonal entries is 1e-3.
