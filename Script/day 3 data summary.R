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
install.packages("ellmer")
library(ellmer)
library(ellmer)

chat <- chat_anthropic(
  model = "claude-sonnet-5-5",
  system_prompt = "You are a helpful assistant for R and data analysis."
)

# Ask one question
chat$chat("How do I run a t-test in R?")

# Or start an interactive chat in the console
live_console(chat)
q
q
chat <- chat_anthropic(
  model = "claude-sonnet-5-5",
  system_prompt = "You are a helpful assistant for R and data analysis."
)
