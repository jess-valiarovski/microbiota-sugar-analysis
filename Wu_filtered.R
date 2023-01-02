setwd("C:/Users/te/Downloads")
library("dplyr")
library("data.table") 

Wu_COMBO_mapping_file <- read.delim("C:/Users/te/Wu/Wu_COMBO_mapping_file.txt", header=T,sep='\t',check.names=F,comment='',row=1)
View(Wu_COMBO_mapping_file)
metadata <- Wu_COMBO_mapping_file
taxonomy_abundance <- read.csv("wu.csv", header = TRUE)

prevotella_filtered <- taxonomy_abundance[taxonomy_abundance$taxonomy %like% "Prevotella",] 
prevotella_abundance <- prevotella_filtered %>% select(-X.OTU.ID,-taxonomy)
prevotella_abundance <- colSums(prevotella_abundance)
prevotella_df <- data.frame(prevotella_abundance)
P_filtered_metadata <- intersect(rownames(prevotella_df), rownames(metadata)) #intersect common samples (those who do not have prevotella genus are excluded)
metadata <- metadata[P_filtered_metadata,] #filter metadata samples
metadata <- cbind(metadata, prevotella_df)

bacteroides_filtered <- taxonomy_abundance[taxonomy_abundance$taxonomy %like% "bacteroides",] 
bacteroides_abundance <- bacteroides_filtered %>% select(-X.OTU.ID,-taxonomy)
bacteroides_abundance <- colSums(bacteroides_abundance)
bacteroides_df <- data.frame(bacteroides_abundance)
B_filtered_metadata <- intersect(rownames(bacteroides_df), rownames(metadata)) #intersect common samples (those who do not have prevotella genus are excluded)
metadata <- metadata[B_filtered_metadata,] #filter metadata samples
metadata <- cbind(metadata, bacteroides_df)

Alpha_filtered_metadata<- intersect(alpha.diversity$X, rownames(metadata))
metadata <- metadata[Alpha_filtered_metadata,]
metadata <- cbind(metadata, alpha.diversity)

view(metadata)


#METADATA FILTERED FOR PLOTTING
sugarmetadata <- data.frame(cbind(metadata$"shannon",metadata$"SUCROSE_G_AVE",metadata$"FRUCTOSE_G_AVE",metadata$"GLUCOSE_G_AVE",metadata$"TOTAL_SUGARS_G_AVE", metadata$"bacteroides_abundance",metadata$"prevotella_abundance"))

colnames(sugarmetadata) <- c("Shannon_Diversity","Sucrose", "Fructose","Glucose","TotalSugars", "BacteroidesCount","PrevotellaCount")
rownames(sugarmetadata) <- intersect(B_filtered_metadata, alpha.diversity$X)
