pak::pkg_install(c("rio","tidyverse","gt","gtsummary"))
library(rio)
library(tidyverse)
library(gt)
library(gtsummary)

data<- import("data/pulse_data.csv")
names(data)
data |> 
  select(Age,Weight,Height,Gender) |> 
  tbl_summary() |> 
  as_gt() |> 
  gtsave("tables/1.docx")
data |> 
  select(Age,Weight,Height,Gender) |> 
  tbl_summary(by=Gender) |> 
  add_p() |> 
  bold_p(t=0.04) |> 
  as_gt() |> 
  gtsave("tables/2.docx")
pak::pkg_install("easystats")
library(easystats)
lm(Height ~ Age,data=data)
lm_model<-lm(Height~ Age,data=data)
report(lm_model)
