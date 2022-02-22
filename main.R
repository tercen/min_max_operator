library(tercen)
library(dplyr)

ctx <- tercenCtx()

ctx  %>% 
  select(.y, .ci, .ri) %>% 
  group_by(.ci, .ri) %>%
  summarise(max = max(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
