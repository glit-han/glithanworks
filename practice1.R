library(tidyverse)
data <- data.frame(
  col_1 = c(1,2,3,4,5)
  , col_2 = c(6,7,8,9,10)
  , col_3 = c(-1,-2,-3,-4,-5)
)

data2<-data%>%
  mutate(
    col_4 = c(0,9,8,7,6),
  
    col_5 = col_1 + col_3
  )
data3<- data2%>%
  mutate(
    col_6 = case_when(
      col_1 < 3 ~ 'abc',
      col_1 == 3 ~'def',
      col_1 == 4 ~ 'ghi',
      TRUE ~ 'zzz'
    )
  )
data_add<-data.frame(
  col_1 = 5,
  col_2 =5,
  col_3 = 5
)

data_7<-rbind(
  data,
  data_add
)

data_add2<-data.frame(
  col_1 = 'a',
  col_2 = 'a',
  col_3 = 'a'
  
)
data_8<-rbind(
  data,
  data_add2
)



data_9<- data%>%
  add_row(
    data_add,
    data_add2
  )

data_add2_2<-data.frame(
  col_1 = 7,
  col_2 = 7,
  col_3 = 7
)
data_9<- data%>%
  add_row(
    data_add,
    data_add2_2
  )
data_10<- rbind(
  data,
  data_add,
  data_add2_2,
  data_add2
)
data_11<- cbind(
  data,
  data_add,
  data_add2_2,
  data_add2
)
