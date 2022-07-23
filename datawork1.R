library(tidyverse)
data<- data.frame(
  col.1 = 5,
  col.2 = 6
)

data2 <- data%>%
  mutate(
    col.3 = 7
  )
data.add1 <- data2(
  col.1 = 1,
)
  
 if(weekdays(Sys.Date()) %in% c('Monday', 'Tuesday','Wednesday' 'Thursday', 'Friday')){
  print('today is a weekday!')
} else{
  print('today is a weekend...') 
}

data_3 <- data.frame(
  Energy = c(5000,4000,3000,2500,2000,1000,0),
  HP = c(100,80,60,50,40,20,0)
)
data_4 <- data_3%>%
  mutate(
    Health = case_when(
      HP > 50 ~ 'High',
      HP == 50 ~ 'Medium',
      HP < 50 & HP > 0~ 'Low',
      TRUE ~ "Dead")
)
    
 data_5<- data_4%>%
  mutate(
    Power = case_when(
      Energy > 4000 ~ 'High',
      Energy == 4000 ~ 'Medium',
      Energy >= 2500 ~'Medium',
      
      Energy < 2500 & Energy >0 ~ 'Low',
      TRUE ~ "Dead"
      
    )
  )
 
 data_6 <- data_5%>%
   mutate(
     Play_again = case_when(
       Energy > 4000 ~ 'Yes Please!',
       Energy == 4000 ~ 'Ok sure',
       Energy >= 2500 ~'Sure',
       
       Energy < 2500 & Energy > 0~ 'No',
       TRUE ~ "No please..."
       
     )
   )
 
Data_7 <- data.frame(
  row.names = c('Ford Mustang','Toyota Camry','Tesla Model S', 'BMW M3', 'Dodge Charger', 'Honda Civic')
)

Data_8 <- Data_7%>%
  mutate(
    Price = c(25000, 20000, 100000, 60000, 30000, 20000)
  )

 