mkdir E.festucae_Fl1_v3
cp ../Generic_DESeq2.Rmd E.festucae_Fl1_v3/E.festucae_Fl1_v3.DESeq2.WT.3DP.Rmd
sed -i "s/SPECIES/E.festucae_Fl1_v3/g" E.festucae_Fl1_v3/E.festucae_Fl1_v3.DESeq2.WT.3DP.Rmd
sed -i "s/SOI/WT/g" E.festucae_Fl1_v3/E.festucae_Fl1_v3.DESeq2.WT.3DP.Rmd
sed -i "s/REF/3DP/g" E.festucae_Fl1_v3/E.festucae_Fl1_v3.DESeq2.WT.3DP.Rmd
