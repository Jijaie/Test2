# Code for generalized least squared regression models (unstructured within-group correlation)
library(nlme)
library(geepack)
library(lattice)

df_gls <- subset(df_final, Visit_new != 1)
df_gls$stabilization <- as.factor(df_gls$stabilization)

gls.ISSI_2 <- gls(log(ISSI_2) ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.ISSI_2)
gls.ISSI_2.2 <- gls(log(ISSI_2) ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.ISSI_2.2)
anova(gls.ISSI_2, gls.ISSI_2.2)

gls.INDEX_IR <- gls(log(INDEX_IR) ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.INDEX_IR)
gls.INDEX_IR.2 <- gls(log(INDEX_IR) ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.INDEX_IR.2)
anova(gls.INDEX_IR, gls.INDEX_IR.2) 

gls.IS_OGTTU <- gls(log(IS_OGTTU) ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.IS_OGTTU)
gls.IS_OGTTU.2 <- gls(log(IS_OGTTU) ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.IS_OGTTU.2)
anova(gls.IS_OGTTU, gls.IS_OGTTU.2) 

gls.HOMA_IR <- gls(log(HOMA_IR) ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.HOMA_IR)
gls.HOMA_IR.2 <- gls(log(HOMA_IR) ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.HOMA_IR.2)
anova(gls.HOMA_IR, gls.HOMA_IR.2) 

gls.BMI <- gls(BMI ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.BMI)
gls.BMI.2 <- gls(BMI ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.BMI)
anova(gls.BMI, gls.BMI.2)

gls.Waist <- gls(Waist ~ stabilization + factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.Waist)
gls.Waist.2 <- gls(Waist ~ stabilization * factor(Visit_months), data = df_gls, corr=corSymm(form = ~ 1 | StudyID), method = "ML", na.action = na.omit)
summary(gls.Waist.2)
anova(gls.Waist, gls.Waist.2) 
