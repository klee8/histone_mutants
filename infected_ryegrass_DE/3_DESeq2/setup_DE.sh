mkdir L.perenne
cp ../Generic_DESeq2.Rmd L.perenne/L.perenne.DESeq2.WT.mock.Rmd
sed -i "s/SPECIES/L.perenne/g" L.perenne/L.perenne.DESeq2.WT.mock.Rmd
sed -i "s/SOI/WT/g" L.perenne/L.perenne.DESeq2.WT.mock.Rmd
sed -i "s/REF/mock/g" L.perenne/L.perenne.DESeq2.WT.mock.Rmd
cp ../Generic_DESeq2.Rmd L.perenne/L.perenne.DESeq2.clrD.WT.Rmd
sed -i "s/SPECIES/L.perenne/g" L.perenne/L.perenne.DESeq2.clrD.WT.Rmd
sed -i "s/SOI/clrD/g" L.perenne/L.perenne.DESeq2.clrD.WT.Rmd
sed -i "s/REF/WT/g" L.perenne/L.perenne.DESeq2.clrD.WT.Rmd
cp ../Generic_DESeq2.Rmd L.perenne/L.perenne.DESeq2.setB.WT.Rmd
sed -i "s/SPECIES/L.perenne/g" L.perenne/L.perenne.DESeq2.setB.WT.Rmd
sed -i "s/SOI/setB/g" L.perenne/L.perenne.DESeq2.setB.WT.Rmd
sed -i "s/REF/WT/g" L.perenne/L.perenne.DESeq2.setB.WT.Rmd
