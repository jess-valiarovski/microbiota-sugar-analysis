Simple sugars are a part of a healthy diet in humans and microorganisms assist in its metabolism. This study will examine through a computational analysis how changes in simple sugar consumption affect microbial composition in a cross-sectional nutritional survey of 98 healthy individuals. It is hypothesized that a diet high in simple sugars will decrease the alpha diversity of the gut microbiome and increase the genus count of Prevotella. 

QIIME2 was used as a bioinformatics tool to analyze for microbial diversity metrics. R Studio was used to visualize and compute correlations between dietary patterns and microbial composition. It was concluded that there were no significant changes in alpha diversity or Prevotella count when sugar intake was increased. Based on these results, it can be suggested that Prevotella does not use simple sugars as a nutrient to maintain and expand its genus composition. 


Metadata Data Collection from Wu GD, et al. Linking long-term dietary patterns with gut microbial enterotypes. Science. 2011. 334: 105-108. (https://doi.org/10.1126/science.1208344)
Stool samples were collected from 97 healthy individuals for cross-sectional analysis. For each individual, short-term diet information was documented from the “Recall” questionnaire 
and long-term diet information from the food frequency questionnaire (FRQ).

QIIME2 Pipeline Analysis (https://qiime2.org)
Bacterial 16S ribosomal DNA (rDNA) extracted from stool samples were sequenced either using Roche 454 sequencing or shotgun metagenomics.
16S rDNA samples were truncated at 2000 reads for improved representation of the microbial composition for each sample. 
Closed reference filtering using the GreenGenes database was used to classify truncated samples based on OTU (operational taxonomic unit). 
A filtered 16S rDNA OTU count and a corresponding taxonomy were the resulting QIIME artifacts (i.e. files only readable on QIIME). 
The filtered OTU table was processed through phylogeny and diversity metrics in the terminal to produce a tab-separated values file. 
Shannon diversity, OTU count table, and taxonomy were exported in the form of a tsv file and uploaded onto R Studio for further analysis.

R Studio Analysis (https://www.R-project.org/)
Two measurements extracted from the QIIME2 analysis, Shannon Index and Prevotella abundance from each individual, were the measurements used to seek correlations against sugar intake changes. 
A parametric linear regression analysis was used to test whether the conditional relationships in our hypothesis were present: a lower alpha diversity and an increase in Prevotella count when sugar intake in a healthy individual was increased. 
Three simple sugars, fructose, sucrose, and glucose were analyzed against alpha diversity. 
Three scatter plots were generated to examine the linear relationship between the standardized grams of sugar consumed and each individual’s Shannon index value. 
The Shannon index takes into account both richness and evenness, the number of unique OTUs, and their relative abundance in each fecal sample. 
To confirm whether this increase is significant, an ANOVA test was used to compare within the three sugars whether there was a significant difference between the mean alpha diversities and grams of sugar consumed.


ACKNOWLEDGEMENTS:
Miguel Aguinaga, Ethan Chase, Olivia Yesker were direct collaborators. Joleen Khey served as a mentor in this project.
