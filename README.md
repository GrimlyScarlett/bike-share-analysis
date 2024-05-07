
Bike Share Initiative Analysis
Overview
This R project conducts a comprehensive analysis of a dataset concerning a bike sharing initiative. It delves into the psychological factors influencing participation in the program while also examining its environmental impact.

File Structure
Script: final_project_analysis.r
Data File: final_project_data.csv


Analysis
The script encompasses the following analyses:

Bike Share Analysis: Examines the proportion of bike shares in the dataset.
Messaging Analysis: Investigates the proportion of different messaging types in the data.
Descriptive Statistics: Provides summary statistics for the miles column.
Environmental Commitment Average: Computes the average environmental commitment score for each participant.
Source Analysis: Analyzes the proportion of different referral sources in the data.
Gender Analysis: Explores the distribution of genders in the dataset.
Race Analysis: Investigates the distribution of races among participants.
Age Analysis: Presents descriptive statistics for the age column.
Correlation Analysis: Calculates the correlation between miles biked, environmental commitment average, and age.
One-Way ANOVA with APA Table: Conducts a one-way ANOVA on source and miles.
Effect Size (Cohen's d): Determines the effect size between miles biked and referral sources.
Independent t-test: Performs an independent t-test between miles biked and referral sources.
Two-Way ANOVA with APA Table: Conducts a two-way ANOVA on bike share, messaging, and miles.
Scheffe's Post Hoc Test: Carries out a Scheffe's post hoc test following the two-way ANOVA.
Proportions: Calculates specific proportions within the dataset.
Alpha (Cronbach's Alpha): Computes Cronbach's alpha for the environmental commitment items.
Linear Regression: Performs a linear regression on miles biked and environmental commitment average.
Scatter Plot with Regression Line: Generates a scatter plot of miles biked and environmental commitment average with a regression line.
One-Way ANOVA with APA Table (Bike Share): Conducts a one-way ANOVA on bike share and miles.
One-Way ANOVA with APA Table (Messaging): Conducts a one-way ANOVA on messaging and miles.
Interaction Plot: Plots an interaction plot of enrollment condition, messaging condition, and miles biked.


Libraries Used
The script utilizes the following R libraries:

psych
apaTables
effsize
DescTools


How to Run
To execute the script:

Open it in an R environment.
Ensure the data file (final_project_data.csv) is in the correct location.
Run the script.
