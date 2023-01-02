#Convert metadata to format to perform ANOVA tests and plot Prevotella Abundance 

sugarlong<-gather(sugarmetadata,typesugar,measurement,Sucrose:Glucose,factor_key = T)
head(sugarlong)
library(ggplot2)


#Plotting Prevotella Count against Types of Sugar
sugar_plot_prevotella<-ggplot(sugarlong,aes(x=measurement,y=PrevotellaCount,color=typesugar))+
  geom_point()
sugar_plot_prevotella


#ANOVA test for Comparing Prevotella Count Between Sugars
one.way.prevotella <- aov(sugarlong$PrevotellaCount ~ sugarlong$typesugar)
summary(one.way.prevotella)



#ANOVA test Comparing Mean Alpha Diversity Between Sugars
one.way.alpha <- aov(sugarlong$Shannon_Diversity ~ sugarlong$typesugar)
summary(one.way.alpha)

Alpha.test <- TukeyHSD(one.way.alpha)
Alpha.test
plot(Alpha.test)

#No Tukey HSD tests were performed given the insignificance found in ANOVA tests.



