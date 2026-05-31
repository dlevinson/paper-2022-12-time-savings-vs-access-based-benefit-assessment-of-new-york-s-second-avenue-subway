library(readr)
UES_Dis_Rental <- read_csv("Desktop/Manhattan_Property_Data/UES_Dis_Rental.csv")
View(UES_Dis_Rental)
df1<-UES_Dis_Rental

# check for NA
sapply(df2, function(df2) sum(is.na(df2)))

#activate panel regression
library(plm)

attach(df1)
Y<-cbind(Gross_Income_per_SqFt)
X<-cbind(df1$D_nearest_Station)

# set data as panel data
pdf1<-pdata.frame(df1, index=c("id","t"))

# descriptive statistics
summary(Y)
summary(X)

#Pooled OLS Estimator
UESPolling<-plm(Y~X, data=pdf1, model = "pooling")
summary(UESPolling)
#Between Estimator
UESBetween<-plm(Y~X, data=pdf1, model = "between")
summary(UESBetween)
#Random Effect Estimator
UESRandom<-plm(Y~X, data=pdf1, model = "random")
summary(UESRandom)
#Fixed Effect Estimator
UESFixed<-plm(Y~X, data=pdf1, model = "within")
summary(UESFixed)
#First Differences Estimator
UESFirstdiff<-plm(Y~X,data = pdf1, model = "fd")
summary(UESFirstdiff)
#LM Test for ramdome effects versus OLS
plmtest(UESPolling)
#LM test for fixed effects versus OLS
pFtest(UESFixed, UESPolling)

#combine multiple csv files
#library data.table package
library(data.table)
#set work directory to the fold contaisn all csv files
setwd("~/Desktop/Manhattan_Property_Data/Annualised Sales/Distance Sale/Geocoded")
#group all csv files together
files<-list.files(pattern = ".csv")
# here, files refer to the "files" pattern created above
temp<-lapply(files,fread, sep=",")
#combine all csv
data<-rbindlist(temp)
#export combined csv file
write.csv(data,file = "2006_2013Geocoded.csv",row.names = FALSE)


#split 1 csv to several csv files
#read the 1 csv file
Sold_Property <- read_csv("Sold_Property.csv")
#split them and export to n csvs
df_dat <- split(Sold_Property, Sold_Property$FINANCIAL_YEAR)

lapply(df_dat, function(x) write.csv(x, paste0('df_', x$col2[1], '.csv'), row.names = FALSE))
for(i in 1:length(df_dat))
{
filename <- paste0("FINANCIAL_YEAR", i, ".csv")
write.csv(df_dat[[i]], filename)
}

#interquartile method to exclude outliers
Q<-quantile(df2$Unit_Price_SqM,probs = c(.25, .75), na.rm = FALSE)
iqr<-IQR(df2$Unit_Price_SqM)
df3<-subset(df2,df2$Unit_Price_SqM>(Q[1] - 1.5*iqr)&df2$Unit_Price_SqM<(Q[2]+1.5*iqr))

