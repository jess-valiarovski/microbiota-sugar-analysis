#Open Table files
alpha.diversity <- read.delim("C:/Users/te/Wu/Wu_core-metrics-results/alpha-diversity.tsv")
View(alpha.diversity)

Wu_COMBO_mapping_file <- read.delim("C:/Users/te/Wu/Wu_COMBO_mapping_file.txt", header=T,sep='\t',check.names=F,comment='',row=1)

samples_order <-intersect(rownames(Wu_COMBO_mapping_file), alpha.diversity$X)
microbes <- alpha.diversity
map <-Wu_COMBO_mapping_file[samples_order,]

#making plots
#Plot for Fructose
plot( microbes$'shannon' ~ map$'FRUCTOSE_G_AVE', xlab= "Standardized Grams of Fructose per Day (g)", ylab= "Shannon Diversity Index (H)")

plot(microbes$'shannon' ~ map$'SUCROSE_G_AVE', xlab= "Standardized Grams of Sucrose per Day (g)", ylab= "Shannon Diversity Index (H)")

plot(microbes$'shannon' ~ map$'GLUCOSE_G_AVE', xlab= "Standardized Grams of Glucose per Day (g)", ylab= "Shannon Diversity Index (H)")

#Linear Regression Analysis
Fructose_lm <- lm(microbes$'shannon' ~ map$'FRUCTOSE_G_AVE')

Sucrose_lm <- lm(microbes$'shannon' ~ map$'SUCROSE_G_AVE')

Glucose_lm <- lm(microbes$'shannon' ~ map$'GLUCOSE_G_AVE')

summary(Fructose_lm)

#Add linear model line
abline(Fructose_lm, col='red')

abline(Sucrose_lm, col='red')

abline(Glucose_lm, col='red')
