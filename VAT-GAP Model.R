'VAT-GAP MODEL 

TIP:
      To execute this code, you can highlight the code CTRL + A and after that,press CTRL + Enter.

      1. Without chaning of policy parametars
      
      After pressing CTRL + Enter, a window with Data Editor will appear. If you don't want to change some parameters, 
      you need to press only X with the mouse in the right corner (dont press on Done).

      2. With changing of policy parametars
      
      If you want to change some policy parameters, you can change them in the columns with titles :
          - Simulation_Toggle_Exempt;
          - Simulation_Toggle_Reduced_Rate;
          - Standard_VAT_Rate;
          - Preferential_VAT_Rate.
      
     After changing policy parameters, you need to press the button for synchronizing, and after that the button Done.
     
     3. With choosing one this command programm with itterate thorugh other modules and with produce VAT-Dashboard in html format.
     
        This dasboard contain interatciteve charts, which can be separately downloaded for their further use such as presentations or analisys.
     
        The dashboard you can find in rooth of the VAT-GAP model and you can open it in the browsers (eg, Chrome, Firefox etc.)

    '          

# Setting up path to directory with data 
  #path<-"C:/Simulation/VAT-GAP-model/DATA/INPUT" #<----Set your path here for data 
  #path1<-"C:/Simulation/VAT-GAP-model" #<----Set your path here for the scripts


        # 1.INPUT PARAMETERS FOR SIMULATION -----------------------------------------


setwd(path)
getwd()
            # Importing libraries
            
            library(DataEditR)
            library(data.table)
            library(tidyr)
            library(readxl)
            library(xlsx)
            library(dplyr)
            options(dplyr.summarise.inform = FALSE)
            library(reshape2)
            library(rccmisc) 
  
                    standard_VAT_rate = 0.18
                    preferential_VAT_rate = 0.05
                    
                    # Name of the version of model
                    version_vat_model<-c("VAT_Model_v9.15b.xlsx")
                   
                    TAXABLE_PROPORTION_IMPORT <- read_excel(version_vat_model, sheet = "Simulation", col_names = F)[c(-1,-2,-3),] %>%
                      data.frame()

                    # Input data with taxable proportions (Data for goods comes from import data while other are estimated on the bases COICOP)
                    
                    TAXABLE_PROPORTION_IMPORT<-TAXABLE_PROPORTION_IMPORT%>%
                      dplyr::select("...1","...2","...10","...11","...12","...14","...15")%>%
                      dplyr:: rename(c("PRODUCT_INDUSTRY_CODE"= "...1",
                                       "CPA_DIVISION"= "...2",
                                       "Current_Policy_Exempt"="...10",
                                       "Current_Policy_Reduced_Rate"= "...11",
                                       "Current_Policy_Fully_Taxable"="...12",
                                       "Simulation_Toggles_Exempt"="...14",
                                       "Simulation_Toggles_Reduced_Rate"="...15"
                                       ))%>%
                      dplyr::arrange(PRODUCT_INDUSTRY_CODE)


                    
                    TAXABLE_PROPORTION_IMPORT[3:5]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[3:5]))
                    TAXABLE_PROPORTION_IMPORT[6:6]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[6:6]))
                    #TAXABLE_PROPORTION_IMPORT$Current_Policy_Exempt[41] = 0 #  Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    TAXABLE_PROPORTION_IMPORT[7:7]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[7:7]))
                    
   
                    SIMULATION<-TAXABLE_PROPORTION_IMPORT
                    SIMULATION$Standard_VAT_Rate = standard_VAT_rate
                    SIMULATION$Standard_VAT_Rate[41] = 0 # This is the industry: Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    SIMULATION$Preferential_VAT_Rate = preferential_VAT_rate
           
                    
        # 2.CHANGE OF SIMULATION POLICIES ------------------------------------------------
                    
               
                    SIMULATION<-data_edit(SIMULATION) #<---------- Select lines from begging until this line and press Run
                    

        # 3.RUNNING SIMULATION ---------------------------------------------------

                    
                    source(file=paste(path1,"/Data preprocessing-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/TaxCalc-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Estimation effective VAT rates-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Forecast-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Export-Module.R",sep=""),local=TRUE)
                    rmarkdown::render((file=paste(path1,"/VAT-Dashboard.Rmd",sep="")),params=list(args = myarg))
                    

                 
                    
                    