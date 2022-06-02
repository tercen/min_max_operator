library(tercen)
library(dplyr)
library(dtplyr)

ctx <- tercenCtx()

ctx  %>% 
  select(.y, .ci, .ri) %>% 
  lazy_dt() %>%
  group_by(.ci, .ri) %>%
  summarise(max = max(.y)) %>%
  as_tibble() %>%
  ctx$addNamespace() %>%
  ctx$save()
