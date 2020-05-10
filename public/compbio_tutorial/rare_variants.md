
# Table of Contents

1.  [Annotating VCF files](#orga92436a)
    1.  [`ANNOVAR`](#org05fbd99)
        1.  [Figure out what annotations you want and download them](#org7d855c2)
        2.  [Working with VCFs](#orgdca8ffa)
    2.  [Running `ANNOVAR`](#org983c21e)


<a id="orga92436a"></a>

# Annotating VCF files


<a id="org05fbd99"></a>

## `ANNOVAR`

`ANNOVAR` is a tool for functionally annotating genetic variants.  The documentation for `ANNOVAR` is quite good, [you can find it here](https://doc-openbio.readthedocs.io/projects/annovar/en/latest/).
In this tutorial we'll be working with data on the University of Chicago's `gardner` cluster run by the CRI.  [You can learn more about gardner here.](https://github.com/stephenslab/gardner)
I'll be assuming that the data is already in VCF(gz) format stored at `/gpfs/data/xhe-lab/ncbi_2`. And that if you got the data from db-GaP, that it's been decrypted with `vdb-decrypt`.
You can run `vdb-decrypt` using 

    module load gcc/6.2.0 
    module load sra-tools
    cd /gpfs/data/xhe-lab/ncbi_2/
    vdb-decrypt dbGaP-12106 #or whatever directory

Also, please note that `ANNOVAR` has a *very* inefficient method for storing data (large uncompressed plain-text files), so *please* use the already installed version at `/gpfs/data/xhe-lab/software/annovar/`


<a id="org7d855c2"></a>

### Figure out what annotations you want and download them

Let's start with a peek at what's already downloaded (so that we don't have to download it again).

    cd /gpfs/data/xhe-lab/software/annovar
    find humandb -name "*txt"

You can read more about these annotations in the documentation.  (Check out the "Filter" based annotations for variant-level annotation)

[From the documentation](https://doc-openbio.readthedocs.io/projects/annovar/en/latest/user-guide/filter/):

> `dbnsfp30a`: this dataset already includes SIFT, PolyPhen2 HDIV, PolyPhen2 HVAR, LRT, MutationTaster, MutationAssessor, FATHMM, MetaSVM, MetaLR, VEST, CADD, GERP++, DANN, fitCons, PhyloP and SiPhy scores, but ONLY on coding variants

If we wanted to download it again, this is the command we would use:

    cd /gpfs/data/xhe-lab/software/annovar/
    .annotate_variation.pl -downdb -webfrom annovar -buildver hg19 dbnsfp30a humandb/


<a id="orgdca8ffa"></a>

### Working with VCFs

Again, `ANNOVAR` has extensive documentation about working with VCF files, [which you can find here](https://doc-openbio.readthedocs.io/projects/annovar/en/latest/articles/VCF/).  The script `table_annovar.pl` can **directly** support working with VCFs, but because our data is quite large, we might want to preprocess it first

1.  Get  VCF files

    Starting with a list of vcf files:
    
        find /gpfs/data/xhe-lab -name "*vcf*gz"
    
    Within those files, let's find the "genotype" files
    
        find . -name "*tar.gz" | egrep 'genotype-calls' | grep 'grc37'
    
    We can then extract these files using something like this to extract all tar files that we believe contain vcfs:
    
        
        for i in `find . -name "*tar.gz" | egrep 'genotype-calls' | grep 'grc37'`;
        do
            tar -C $(dirname "${i}") -xvzf "${i}";
        done

2.  Prepping VCFs for `ANNOVAR`

    I'm going to focus on the file `./dbGaP-23177/73416/PhenoGenotypeFiles/RootStudyConsentSet_phs000298.Autism_HighSeq.v4.p3.c1.DS-ASD/GenotypeFiles/c1/grc37/c1_Autism_BCM_hg19.vcf.gz` .  Something to note
    as you organize the data is that it appears that there are VCF files with different reference genomes(note the `grc37` vs `grc36` and `hg19` vs `hg18`).  [You can learn more about that here.](https://bitesizebio.com/38335/get-to-know-your-reference-genome-grch37-vs-grch38/) You **DO NOT**
     want to merge data with different reference genomes.

3.  Removing individual level data

    To annotate we do not need the individual level genotypes, and `ANNOVAR` is not smart enough to ignore them, so we have to remove them ourselves.
    
        module load gcc/6.2.0
        module load htslib/1.10.2
        module load bcftools/1.10.2
        cd /gpfs/data/xhe-lab/ncbi_2/dbGaP-23177/PhenoGenotypeFiles/RootStudyConsentSet_phs000298.Autism_HighSeq.v4.p3.c3.DS-AOND-MDS/GenotypeFiles/c3
        bcftools view -G c3_asc_phs000298_exomes.vcf.gz -Oz -o /gpfs/data/xhe-lab/ncbi_2/c3_asc_phs000298_exomes.vcf.gz


<a id="org983c21e"></a>

## Running `ANNOVAR`

To get the annotations `refGene,cytoBand,exac03,avsnp147,dbnsfp30a,cadd` with a vcf input, run the command. Note how the `operation` flag requires `g`, `r`, or `f` for 
`gene`, `region` and `filter` (variant) level annotation matching the `protocol` argument.

    qsub -I -l walltime=12:00:00 -l nodes=1:ppn=1 -l mem=32gb #DO NOT RUN ANNOVAR FROM THE HEAD NODE!
    cd /gpfs/data/xhe-lab/ncbi_2/
    gunzip c3_asc_phs000298_exomes.vcf.gz
    /gpfs/data/xhe-lab/software/annovar/table_annovar.pl c3_asc_phs000298_exomes.vcf /gpfs/data/xhe-lab/software/annovar/humandb/ -buildver hg19 -out myanno -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation g,r,f,f,f -nastring . -vcfinput -polish
    rm c3_asc_phs000298_exomes.vcf

