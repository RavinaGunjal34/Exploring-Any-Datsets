#TASK - 01 : EXPLORING ANY DATASET
.
.
.
.
#Load necessery library
>library(dplyr)
>library(ggplot2)


#Load the Dataset
>DATA<-read.csv("C:/Users/DELL/Desktop/DATA ANALYTICS_INTERN/olist_order_payments_dataset.csv")

#Print the Dataset
>print(DATA)


#EXPLORE THE DATASET
.
.
.
#Basic Exploration
>summary(DATA)               #summary statistics
>head(DATA)                     #print first 6 row of dataset

#DIMESIONS
>dim(DATA)
>nrow(DATA)
>ncol(DATA)

>colnames(DATA)            #to specify the heading of column

#summary of specific column
>summary(DATA$payment_type)


#To check Data Structure
>str(DATA)

#Frequency count of specific category
>DATA%>%count(payment_type)
>DATA%>%count(paymet_installments)

#To check the datatype
>DATA%>%glimpse()


#DATA VISUALIZATION

#BAR PLOT
>data%>%+ggplot(aes(x=payment_type,fill=payment_type))+geom_bar()
>data%>%+ggplot(aes(x=payment_installments,fill=payment_installments))+geom_bar()

>ggplot(data=DATA)+geom_bar(mapping=aes(x=payment_type))

#HISTOGRAM

>ggplot(DATA,aes(x=payment_installments))+geom_histogram()
>ggplot(DATA,aes(x=payment_value))+geom_histogram()


#THANK YOU FOR GIVING APPORTUNITY.........
#techaintern