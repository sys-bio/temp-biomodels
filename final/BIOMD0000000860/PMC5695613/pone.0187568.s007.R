#R script to find miRNAs with OA targets

# use info on mir targets and oa assoc genes to find mirs enriched in targets, and say what they are. 

extn="hsa"
infile=paste0(extn,"_MTI.csv.gz")
md=read.table(gzfile(infile),sep=",",header=T, stringsAsFactors=F)
cat("read", infile,"\n")
td=read.table("targets_associated_with_osteoarthritis.csv",sep=",",header=T, stringsAsFactors=F)

library(dplyr)
library(plyr)


# has some non human miRs regulating human targets
md = md[md$Species..miRNA == "Homo sapiens",]


# number of protein coding genes in ensembl GRCh38.p7
Nhg = 20441
# this excludes 22219 non-coding...

# for each length(unique(md$miRNA)
# targets,
#
# q=number of white balls           drawn without replacement
#m: the number of white balls in the urn
#n: the number of black balls in the urn.
#k: the number of balls drawn from the urn
#q=n mir[i] targets in oa
#m=nrow(td)
#n=Nhg-m
#k=n mir[i] targets
#phyper(q, m, n, k, lower.tail = TRUE, log.p = FALSE)

mds=unique(md[,c("miRNA","Target.Gene")])
mirtab=table(mds$miRNA)
mds_oa=subset(mds,Target.Gene %in% td$target.gene_info.symbol)
mirtab_oa=table(mds_oa$miRNA)

m=nrow(td)
n=Nhg-m
c=1
# just to create a vector of right size and right names - this will be for pvalues
pv=mirtab_oa
for (mir in names(mirtab_oa)){
    k=mirtab[mir]
    q=mirtab_oa[mir]
    # lower.tail = TRUE will flag up e.g. 95 targets, 0 mir targets
    # want P[X >= x] not P[X > x] so add dhyper term 
    pv[c]=phyper(q, m, n, k, lower.tail = FALSE) + dhyper(q, m, n, k)
    c=c+1
}

mdsr=ddply(mds_oa, "miRNA", summarize, 
	     OA.targets=paste(sort(Target.Gene), collapse=",") )


enrichment=(mirtab_oa/mirtab[names(mirtab_oa)]) / (m/Nhg)
# note strange need to prevent names .Var1, .Freq appearing
# can use I(unname(vec)) or as.vector (tho it already is) 
odat = data.frame(miRNA=names(mirtab_oa),
		  N.targets=as.vector(mirtab[names(mirtab_oa)]),
		  N.OA.targets=as.vector(mirtab_oa),
                  Enrichment=as.vector(enrichment),
		  pvalue=as.vector(unname(pv)),
		  p.adj=p.adjust(pv,method="fdr"))

rownames(odat)=NULL

odat2=left_join(odat,mdsr)

outf=paste0(extn,"_mir_oa_enrichment.csv")
write.table(odat2[order(odat2$p.adj),], file=outf, quote=F, sep="\t", row.names
=F)
cat("made",outf,"\n")



# mir="hsa-miR-140-5p"
#> pv[mir]
#hsa-miR-140-5p 
#  5.503894e-05 
#> mirtab[mir]
#hsa-miR-140-5p 
#            46 
#> mirtab_oa[mir]
#hsa-miR-140-5p 
#            10 

