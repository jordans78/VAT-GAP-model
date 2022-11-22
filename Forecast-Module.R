
'
    Forcast VAT revenues
'

setwd(path)
getwd()

# path<-"C:/Users/User/Documents/WB/VAT-GAP/3-New Version/VAT GAP in R/Model/DATA/INPUT" 
# setwd(path)
# getwd()
# 

      DS<-Results$Simulation$Simulated_Change_in_Revenues.M_of_denars
      
      #DS<-10000
      
     # MACRO_FISCAL_INDICATORS <- read_excel("MACRO_FISCAL_INDICATORS.xlsx")
      
      
      # Adding new column
      MACRO_FISCAL_INDICATORS<-MACRO_FISCAL_INDICATORS%>%
        dplyr::mutate(
                      Result_Simulation=0
                      )

# Simulation_VAT_NET=Nominal_VAT_NET,

        MACRO_FISCAL_INDICATORS[20,4]<-DS
        
        
        MACRO_FISCAL_INDICATORS<-MACRO_FISCAL_INDICATORS%>%
          dplyr::mutate(
            DS_Share_VAT=Result_Simulation/Nominal_GDP )
          
        DS_Share_VAT<-MACRO_FISCAL_INDICATORS[20,5]
        
        
        MACRO_FISCAL_INDICATORS[21,5]<-DS_Share_VAT$DS_Share_VAT
        MACRO_FISCAL_INDICATORS[22,5]<-DS_Share_VAT$DS_Share_VAT

        
        MACRO_FISCAL_INDICATORS<-MACRO_FISCAL_INDICATORS%>%
          dplyr::mutate(
            New_VAT=Nominal_GDP*DS_Share_VAT,
            #New_Simulation_VAT=Nominal_VAT_NET-New_VAT)
            New_Simulation_VAT=Nominal_VAT_NET+New_VAT)
            

    # 1.First calculation     
        
      FINAL_FORECASTING0<-MACRO_FISCAL_INDICATORS%>%
        select(Year,Nominal_GDP,Nominal_VAT_NET)%>%
        arrange(desc(Year))
        
      function_estimation <- function(x){ ((x) /lead(x))*100-100}
        
      
      FINAL_FORECASTING1<-mutate(FINAL_FORECASTING0,
                                 Nominal_GDP_GROWTH=function_estimation(Nominal_GDP)) %>%
                                arrange((Year))
      
      FINAL_FORECASTING2<-mutate(FINAL_FORECASTING1,
                                 CALCULATION_VAT_NET=1+(1/100*Nominal_GDP_GROWTH)
                               )

            
            #FINAL_FORECASTING2<-inner_join(FINAL_FORECASTING2,DS_NEXT_YEARS, by = "Year")
            
            
            
            
            # VAT_NET
            # for (i in 1:length(which(is.na(FINAL_FORECASTING2$Nominal_VAT_NET)))){
            #   FINAL_FORECASTING2=FINAL_FORECASTING2%>%mutate(Nominal_VAT_NET=if_else(is.na(Nominal_VAT_NET),(CALCULATION_VAT_NET*lag(Nominal_VAT_NET)+ DS_VAT_NET),Nominal_VAT_NET))
            # }

          for (i in 1:length(which(is.na(FINAL_FORECASTING2$Nominal_VAT_NET)))){
            FINAL_FORECASTING2=FINAL_FORECASTING2%>%mutate(Nominal_VAT_NET=if_else(is.na(Nominal_VAT_NET),(CALCULATION_VAT_NET*lag(Nominal_VAT_NET)),Nominal_VAT_NET))
          }
          
          #View(FINAL_FORECASTING2)

          FINAL_FORECASTING_BU<-FINAL_FORECASTING2%>%
            dplyr::select(Year,Nominal_VAT_NET)
          
          
        # 2.Second calculation
          
       
          
          FINAL_FORECASTING0<-MACRO_FISCAL_INDICATORS%>%
            select(Year,Nominal_GDP,New_Simulation_VAT)%>%
            arrange(desc(Year))
          
          function_estimation <- function(x){ ((x) /lead(x))*100-100}
          
          
          FINAL_FORECASTING1<-mutate(FINAL_FORECASTING0,
                                     Nominal_GDP_GROWTH=function_estimation(Nominal_GDP)) %>%
            arrange((Year))
          
          FINAL_FORECASTING2<-mutate(FINAL_FORECASTING1,
                                     CALCULATION_VAT_NET=1+(1/100*Nominal_GDP_GROWTH)
          )
          
          
         
          
          
          
          
          
          for (i in 1:length(which(is.na(FINAL_FORECASTING2$New_Simulation_VAT)))){
            FINAL_FORECASTING2=FINAL_FORECASTING2%>%mutate(New_Simulation_VAT=if_else(is.na(New_Simulation_VAT),(CALCULATION_VAT_NET*lag(New_Simulation_VAT)),New_Simulation_VAT))
          }
          
          #View(FINAL_FORECASTING2)
          
          FINAL_FORECASTING_SIM<-FINAL_FORECASTING2%>%
            dplyr::select(Year,Nominal_GDP,New_Simulation_VAT)
          
          
          
          FINAL_COMPARISON_VAT_REVENUES<-inner_join(FINAL_FORECASTING_BU,FINAL_FORECASTING_SIM, by = "Year")
          

          # Estimation of share of GDP
          FINAL_COMPARISON_VAT_REVENUES<-FINAL_COMPARISON_VAT_REVENUES%>%
            dplyr::mutate(share_gdp=Nominal_VAT_NET/Nominal_GDP )
          
         # View(FINAL_COMPARISON)


