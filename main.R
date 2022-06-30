library(tercen)
library(dplyr)
library(dtplyr)

ctx <- tercenCtx()

df.out<-ctx  %>% 
  select(.y, .ci, .ri) %>% 
  lazy_dt() %>%
  group_by(.ci, .ri) %>%
  summarise(max = max(.y)) %>%
  ctx$addNamespace() 

ctx$save(df.out)
