### 🚀 **Project Title:**  
🦠 **Impact of Simple Sugar Intake on Gut Microbiome Composition** 

📅 **Timeframe:** September 2021 - December 2021  
📍 **Author:** **Jess Valiarovski**  
📚 **Course:** **Foundations of Biology Laboratory: Computational Microbiology Research**  
🎓 **Collaborators:** Miguel Aguinaga, Ethan Chase, Olivia Yesker  
🎓 **Mentor:** Joleen Khey  

---

## 🚀 **Project Overview**  
This study examines how **changes in simple sugar consumption** affect microbial composition in the gut microbiome using **computational and statistical analysis**.  

### **🔍 Hypothesis**  
✅ A diet **high in simple sugars** will **decrease** the alpha diversity of the gut microbiome.  
✅ A diet **high in simple sugars** will **increase** the genus count of **Prevotella**.  

**Key Findings:** ❌ No significant changes in alpha diversity or **Prevotella** count were observed when sugar intake increased.  
🔬 These results suggest that **Prevotella does not use simple sugars as a nutrient** to maintain or expand its genus composition.  

---

## 📊 **Methods & Data Processing**  

### **📝 Dataset Overview**  
- **Source:** Wu GD, et al. *Linking long-term dietary patterns with gut microbial enterotypes*. Science, 2011.  
- **DOI:** [10.1126/science.1208344](https://doi.org/10.1126/science.1208344)  
- **Participants:** 98 healthy individuals  
- **Data Collection:**  
  - **Short-term diet** recorded from the **“Recall” questionnaire**  
  - **Long-term diet** recorded from the **Food Frequency Questionnaire (FRQ)**  
- **Sample Type:** Stool samples for microbial composition analysis  

---

## 🔬 **Bioinformatics & Statistical Analysis**  

### **🧬 QIIME2 Pipeline Analysis** ([QIIME2](https://qiime2.org))  
✔ **Bacterial 16S rDNA sequencing** (via Roche 454 sequencing or shotgun metagenomics)  
✔ **Preprocessing:**  
   - Reads truncated at **2000** for improved microbial representation  
   - **Closed-reference filtering** using the GreenGenes database for OTU classification  
✔ **Output Artifacts:**  
   - **OTU count table**  
   - **Taxonomy classification**  
   - **Shannon diversity index**  
✔ **Converted to TSV format** for further analysis in R  

### **📊 R Studio Analysis** ([R Project](https://www.R-project.org/))  
✔ **Extracted Shannon Index & Prevotella abundance** from QIIME2 analysis  
✔ **Linear regression analysis** to examine correlations between sugar intake and microbial diversity  
✔ **Three sugars analyzed:**  
   - **Fructose, Sucrose, Glucose** vs. Shannon Index  
✔ **Data Visualization:**  
   - Scatter plots to assess linear relationships  
   - ANOVA test to compare differences in alpha diversity across sugar types  

---

## 📌 **Key Findings**  

### 🛠 **Statistical Results**  
📌 **No significant correlation** between **simple sugar intake** and **gut microbial alpha diversity**.  
📌 **No significant change in Prevotella count** when sugar intake increased.  
📌 **Contrary to hypothesis**, **Prevotella does not appear to metabolize simple sugars** to maintain populations in the gut.  

### **📈 Visualization Highlights**  
📌 **Scatter plots** showed no linear trend between sugar intake and microbial diversity.  
📌 **ANOVA results** confirmed no significant differences in Shannon Index values across sugar types.  

---

## 🛠️ **Technical Skills Demonstrated**  

✅ **Bioinformatics Analysis:** `QIIME2`, 16S rDNA sequencing  
✅ **Data Wrangling & Cleaning:** `pandas`, `numpy`  
✅ **Statistical Modeling:** Linear regression, ANOVA  
✅ **Data Visualization:** `ggplot2`, scatter plots  
✅ **Reproducible Research:** Pipeline from raw genetic data to hypothesis testing
---

## 📎 **References**  
Wu GD, et al. *Linking long-term dietary patterns with gut microbial enterotypes*. **Science**, 2011.  
📄 **DOI:** [10.1126/science.1208344](https://doi.org/10.1126/science.1208344)  

---

