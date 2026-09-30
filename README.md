# Attachment & Singlehood

## Brief summary

Manuscript: "Changes in Single People’s Attachment Models and Co-Development with Life Satisfaction"  

We aim to close several gaps in knowledge by investigating how single people change in different attachment models (i.e., global, partner, best friends, parents) over the course of long-term singlehood compared to partnered people. We compare consistently single people to individuals in stable romantic relationships but also to individuals who are intermittently partnered/single. Further, we plan on examining how singles’ attachment and life satisfaction co-develop with increasing singlehood duration.

## Preregistration 

We preregistered this project on OSF at https://osf.io/2udxh/overview?view_only=ee21adb66c6e48a39b3bc53e9fae919b  
The preregistration is also uploaded here in the folder "preregistration" (although without a verified timestamp) in case of further issues or instability with the OSF platform.  

## Supplementary html-documents

Two html-documents that are generated from Quarto scripts (.qmd) transparently show all data cleaning and analysis steps. Thereby, you can follow all steps without reproducing them computationally on your machine:  
- "01_clean_data.html" shows how the cleaned data is generated from the primary data.  
- "02_analyses.html" shows sample descriptives, all confirmatory and exploratory analyses, as well as some robustness checks.  

To access these html-documents, please click on them, then on the "..." button, and select "Download". Alternatively, download the entire repository by clicking on the green "Code" button and then on "Download ZIP".  

[When viewing the repository through the service *Anonymous GitHub*, simply select the respective file on the left and click "Download". Alternatively, select "Full repo ZIP" on the top right to download all files.]  

## Instructions to reproduce

How to computationally reproduce results in the manuscript “Changes in Single People’s Attachment Models and Co-Development with Life Satisfaction” (as well as additional, supplementary results)

### Data access and retrieval

This manuscript uses data collected as part of the yourPersonality Project which was approved by the Institutional Review Board at the University of Illinois at Urbana-Champaign (protocol number 17,382). We don’t upload the primary data here but instead the cleaned (processed data), which we created in "01_clean_data.qmd".  

To retrieve all relevant R-files, download the repository by clicking on the green "Code" button and then on "Download ZIP". Unzip the files, and open the folder.  

[When viewing the repository through the service *Anonymous GitHub*, simply select "Full repo ZIP" on the top right to download all files.]  

### Cleaning and analyses

Next, open the R-project “attachment.Rroj”. From within the R-project, open the R-script “00_attachment_mainscript.R” and follow instructions therein.

### R and R-package version control

We used R version 4.6.0 and RStudio version 2026.5.1.225 on macOS Tahoe 26.5.2 (25F84). Package and dependency version management is done with the ‘renv’ package and the lock file “renv.lock”. Therefore, first execute the commands install.packages(“renv”) and renv::restore() as described in “00_attachment_mainscript.R” to make sure correct R package versions are used. For more information, see https://rstudio.github.io/renv/articles/renv.html .