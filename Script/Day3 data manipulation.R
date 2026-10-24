import("data/pulse_data.csv")
names(data)
data<-import("data/pulse_data.csv")
names(data)
select(data,Height)

select(data,2,3)
select(data,c(3,5))
select(data,-c(1:5))
select(data,-c(3:10))
filter(data,Gender=="Female")
filter(data,Gender!="Female")
filter(data,Age>=19)
filter(data,Age<=19)

filter(data,Age<19|Gender=='Male')
filter(data,Age>20 & Gender=='Female')
filter(data,Exercise %in% c("Moderate","Low"))

select(data,1,3,4)
filter(data,Age<20)
data |> 
  select(1,3,4) |> 
  filter(Age>20)

data |> 
  mutate(bmi=Weight/Height^2)
names(data)
data<-data |> 
  mutate(bmi=Weight/Height^2)

data |> 
  mutate(bmi_category=case_when(
    bmi<18.5~"underweight",
    bmi>= 18.5 & bmi< 25 ~ "normal",
    bmi>=25 & bmi < 30 ~ "overweight",
    bmi>30 ~ "obese"
  ))
data<-data |> 
  mutate(bmi_category=case_when(
    bmi<18.5~"underweight",
    bmi>= 18.5 & bmi< 25 ~ "normal",
    bmi>=25 & bmi < 30 ~ "overweight",
    bmi>30 ~ "obese"
  ))
data |> 
  mutate(bmi_category=case_when(
    bmi<18.5~"underweight",
    bmi>= 18.5 ~ "normal",
  ))

ifelse(data$Age<18,"child","mature")
names(data)
data |> 
  group_by(Gender) |> 
  summarize(mean_age=mean(Age), sd_age= sd(Age),
            median_age=median(Age))
# |> 
data |> 
  rename(bmi_cat=bmi_category)


data<-data |> 
  rename(bmi_cat=bmi_category)

export(data,"data/pulse_preposessed.csv")
export(data,"data/new_pulse.csv")





