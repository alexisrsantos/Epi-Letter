#These are population estimates from Table 3 Supplement in Santos-Burgoa
Pop_Census_period<-3289427
Displacement_Estimates<-3048173
Displaced_Pop<-241254

#Observed Deaths
Observed<-16608

#Total Deaths in the Period
Census_Deaths_period<-15417
Displacement_Deaths_period<-13633
Reduction_in_Deaths<-1784

#Calculation of Mortality Rates
Census_mort<-Census_Deaths_period/Pop_Census_period
Displacement_mort<-Displacement_Deaths_period/Displacement_Estimates
Displaced_Mort<-Reduction_in_Deaths/Displaced_Pop

#Difference in Mortality Rates Ratios
Displacement_over_Census<-Displacement_mort/Census_mort*100
Displaced_over_Census<-Displaced_Mort/Census_mort*100
Displaced_over_Displacement<-Displaced_Mort/Displacement_mort*100

#Show Mortality Ratios
Displacement_over_Census
Displaced_over_Census
Displaced_over_Displacement

#Displacement Counterfactual with Mortality same to Census Model
round(Displacement_Estimates*Census_mort)

#Excess estimation, with similar Mortality Risk, and ignoring migration selectivity
Observed-round(Displacement_Estimates*Census_mort)