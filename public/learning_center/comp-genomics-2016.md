# Computational genomics reading list (version 2016)

A list compiled by Xin He at UChicago in 2016.

## Sequence Analysis

### Motif discovery

#### Background

- What are DNA sequence motifs? NBT, 2006
- How does DNA sequence motif discovery work? NBT, 2006

#### Paper

- Fitting a mixture model by expectation maximization to discover motifs in biopolymers, ISMB, 2004 (MEME)

### Profile HMM
#### Background

- Eddy, Hidden Markov Models, Current Opinion in Structural Biology, 1996
- DEKM, Introduction in Chapter 5.

#### Paper

DEKM Chapter 5, 5.1-5.4.

### Dynamic Programming

- Introduction to Algorithms, CLRS, 3^rd^ edition. Sections: 15.1-15.3.
    - Remark: focus on the main recurrence equations, (15.2) and (15.7). Pay less attention to technicalities such as running time analysis.

### Sequence alignment and HMM

- DEKM, Sections 2.1-2.3, up to “Local alignment”.
- DEKM, Sections 3.2-3.3 (ignoring the last part, “Modeling of labeled sequences”), 11.6.

## NGS Data Analysis

### Variant calling

#### Background

- Genotype and SNP calling from next-generation sequencing data [Nielsen & Song, NRG, 2011]

#### Paper

- A framework for variation discovery and genotyping using next-generation DNA sequencing data, NG, 2011 (GATK)

### ChIP-seq

#### Background

- Computational methodology for ChIP-seq analysis, Quant Biology, 2013

#### Paper

- Model-based Analysis of ChIP-Seq, Genome Bio, 2008 (MACS)

### RNA-seq: transcriptome inference

#### Background

- RNA-Seq: a revolutionary tool for transcriptomics, NRG, 2009

#### Paper

- Statistical Inferences for Isoform Expression in RNA-Seq. Bioinformatics, 2009

### RNA-seq: differential expression

#### Background

#### Paper

- Small-sample estimation of negative binomial dispersion, with applications to SAGE data, Biostatistics, 2008 (edgeR)
- Moderated statistical tests for assessing differences in tag abundance, Bioinformatics, 2007 (edgeR)

## Regulatory Genomics

### Gene regulatory networks

#### Background

- Inferring Cellular Networks Using Probabilistic Graphical Models, Science, 2004

#### Paper

- Using Bayesian Networks to Analyze Expression Data, J Computational Biology, 2000

### From sequence to gene expression

#### Background
#### Paper
- Integrating regulatory motif discovery and genome-wide expression analysis, PNAS, 2003
- Genome-wide discovery of transcriptional modules from DNA sequence and gene expression. Bioinformatics, 2003

### Epigenomics

#### Background

- Mapping Human Epigenomes [Rivera & Ren, Cell, 2013]

#### Paper

- Discovery and characterization of chromatin states for systematic annotation of the human genome, NBT, 2010 (ChromHMM)

### Predicting transcription factor binding

#### Background
#### Paper

- Accurate inference of transcription factor binding from DNA sequence and chromatin accessibility data, Genome Research. 2011 (CENTIPEDE)

## Molecular Evolution

### Molecular evolution and comparative genomics

#### Background

- DEKM Chapter 8, 8.1-8.3

#### Paper

- Evolutionarily conserved elements in vertebrate, insect, worm, and yeast genomes. Genome Res, 2005 (PhastCons)
- Phylogenetic hidden Markov models. In R. Nielsen, ed., Statistical Methods in Molecular Evolution, 2005. (Technical version of the PhastCons paper)

### Phylogeny reconstruction

#### Background

- DEKM Chapter 8.4.
- Bayesian Inference of Phylogeny and Its Impact on Evolutionary Biology, Science, 2001

#### Paper

- Markov chain monte carlo algorithms for the Bayesian analysis of phylogenetic trees, MBE, 1999

## Statistical Genetics

### Methods for GWAS

#### Background

- Bayesian statistical methods for genetic association studies. NRG, 2009

#### Paper

- Imputation-based analysis of association studies: candidate regions and quantitative traits. PLG, 2007

### eQTL mapping

#### Background

#### Paper

- A statistical framework for joint eQTL analysis in multiple tissues. PLoS Genetics, 2013

### Systems genetics

#### Background

#### Paper

- Sherlock: Detecting Gene-Disease Associations by Matching Patterns of Expression QTL and GWAS. AJHG, 2013

### Integrative genetics using annotations

#### Background

#### Paper

- Joint analysis of functional genomic data and genome-wide association studies of 18 human traits, The American Journal of Human Genetics. 2014

## Reference

- Biological Sequence Analysis, Durbin et al (DEKM)
- Introduction to algorithms (CLRS)