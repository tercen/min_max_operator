library(tercen)
library(dplyr)

ctx <- tercenCtx()

df.out<-ctx  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(max = max(.y)) %>%
  ctx$addNamespace() 

df.out %>%
  ctx$save()
