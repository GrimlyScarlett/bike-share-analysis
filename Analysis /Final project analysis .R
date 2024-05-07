# Data Import
grim.data1 <- read.csv("final_project_data.csv", header = TRUE)

# Bike Share Analysis
prop.table(table(grim.data1$bike.share))

# Messaging Analysis
prop.table(table(grim.data1$messaging))

# Descriptive Statistics
library(psych)
describe(grim.data1$miles)

# Environmental Commitment Average
grim.data1$environcons_avg <- rowMeans(grim.data1[, c("environmental.commitment_1", "environmental.commitment_2", "environmental.commitment_3", "environmental.commitment_4", "environmental.commitment_5", "environmental.commitment_6", "environmental.commitment_7", "environmental.commitment_8", "environmental.commitment_9", "environmental.commitment_10")])
describe(grim.data1$environcons_avg)

# Source Analysis
prop.table(table(grim.data1$source))

# Gender Analysis
prop.table(table(grim.data1$gender))

# Race Analysis
prop.table(table(grim.data1$race))

# Age Analysis
describe(grim.data1$age)

# Correlation Analysis
cor(grim.data1[, c("miles", "environcons_avg", "age")], use = "pairwise.complete.obs")

# One-Way ANOVA with APA Table
library(apaTables)
apa.1way.table(source, miles, data = grim.data1)

# Effect Size (Cohen's d)
library(effsize)
cohen.d(grim.data1$miles, grim.data1$source, na.rm = TRUE)

# Independent t-test
t.test(grim.data1$miles ~ grim.data1$source, var.equal = TRUE)

# Two-Way ANOVA with APA Table
apa.2way.table(bike.share, messaging, miles, data = grim.data1)

# Summary of Two-Way ANOVA
summary(aov(grim.data1$miles ~ grim.data1$bike.share + grim.data1$messaging + grim.data1$bike.share * grim.data1$messaging))

# Scheffe's Post Hoc Test
library(DescTools)
ScheffeTest(aov(grim.data1$miles ~ grim.data1$bike.share + grim.data1$messaging + grim.data1$bike.share * grim.data1$messaging))

# Proportions
27495 / (176679 + 27495)
4150 / (176679 + 4150)
109 / (176679 + 109)

# Alpha (Cronbach's Alpha)
alpha(grim.data1[, c("environmental.commitment_1", "environmental.commitment_2", "environmental.commitment_3", "environmental.commitment_4", "environmental.commitment_5", "environmental.commitment_6", "environmental.commitment_7", "environmental.commitment_8", "environmental.commitment_9", "environmental.commitment_10")])

# Linear Regression
summary(lm(grim.data1$miles ~ grim.data1$environcons_avg))

# Scatter Plot with Regression Line
plot(grim.data1$miles ~ grim.data1$environcons_avg)
abline(lm(grim.data1$miles ~ grim.data1$environcons_avg))

# One-Way ANOVA with APA Table (Bike Share)
apa.1way.table(bike.share, miles, data = grim.data1)

# One-Way ANOVA with APA Table (Messaging)
apa.1way.table(messaging, miles, data = grim.data1)

# Interaction Plot
interaction.plot(grim.data1$bike.share, grim.data1$messaging, grim.data1$miles, ylim = c(86, 236), xlab = "Enrollment Condition", trace.label = "Messaging Condition", ylab = "Miles biked")
