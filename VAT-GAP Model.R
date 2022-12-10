'VAT-GAP MODEL 

TIP:
      To execute this code, you can highlight the code CTRL + A and after that,press CTRL + Enter.

      1. Without chaning of policy parametars
      
      After pressing CTRL + Enter, a window with Data Editor will appear. If you dont want to change some parameters, 
      you need to press only X with the mouse in the right corner (dont press on Done).
      
      First, run this scenario to check that all packages are properly installed and all data is loaded correctly by the application.
      If everything is fine with this scenario, then continue to the scenario explained below.

      2. With changing of policy parametars
      
      If you want to change some policy parameters, you can change them (e.g you can change taxable proportion-TP for exempted or reduced goods and services or tax rates) in the columns with titles :
          - TP_Exempt;
          - TP_Reduced_Rate;
          - Standard_VAT_Rate;
          - Preferential_VAT_Rate.
      
   Taxable proportions can not be change independently.You must change both in the same time.
     
     After changing policy parameters, you need to press the button for synchronizing, and after that the button Done.
     
     3. With choosing one this command programm with itterate thorugh other modules and with produce VAT-Dashboard in html format.
     
        This dashboard contains interactive charts, which can be separately downloaded for their further use such as presentations or analysis.
     
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
            options(tidyr.quiet = TRUE)
            library(readxl)
            library(xlsx)
            library(dplyr, warn.conflicts = FALSE)
            options(dplyr.summarise.inform = FALSE)
            library(reshape2)
            library(rccmisc) 
            library(flexdashboard)
            library(ggplot2)
            library(plotly)
            library(data.table)
            library(tidyr)
            library(dplyr)
            library(shades)
            library(knitr)
            library(DT)
            library(rpivotTable)
            library(forecast)
            library(openintro)
            library(highcharter)
            library(ggvis)
            library(DataCombine)
            library(viridisLite)
            library(readxl)
            library(reshape2)
            options(warn=-1)
            library(orca)
            library(sm)
            library(ks)
            library(plyr)
            
            
            
            
                    benchmark_tax_rate <- 0.18#0.18
                    standard_VAT_rate = 0.18
                    preferential_VAT_rate = 0.05
                    
                    # Name of the version of model
                    version_vat_model<-c("VAT_Model_v9.15b.xlsx")
                   
                    TAXABLE_PROPORTION_IMPORT <- read_excel(version_vat_model, sheet = "Simulation", col_names = F)[c(-1,-2,-3),] %>%
                      data.frame()

                    # Input data with taxable proportions (Data for goods comes from import data while other are estimated on the bases COICOP)

                    TAXABLE_PROPORTION_IMPORT<-TAXABLE_PROPORTION_IMPORT%>%
                      dplyr::select("...1","...2","...10","...11","...12","...14","...15")%>%
                      dplyr:: rename(c("CPA"= "...1",
                                       "Description"= "...2",
                                       "TP_Exempt"="...10",
                                       "TP_Reduced_Rate"= "...11",
                                       "TP_Fully_Taxable"="...12",
                                       "Simulation_Exempt"="...14",
                                       "Simulation_Reduced_Rate"="...15"
                      ))%>%
                      dplyr::arrange(CPA)

                    
                    TAXABLE_PROPORTION_IMPORT[3:5]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[3:5]))
                    TAXABLE_PROPORTION_IMPORT[6:6]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[6:6]))
                    #TAXABLE_PROPORTION_IMPORT$Current_Policy_Exempt[41] = 0 #  Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    TAXABLE_PROPORTION_IMPORT[7:7]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[7:7]))
                    
                    # Rename table and continue with simulation
                    SIMULATION<-TAXABLE_PROPORTION_IMPORT
                    SIMULATION$Standard_VAT_Rate = standard_VAT_rate
                    SIMULATION$Standard_VAT_Rate[41] = 0 # This is the industry: Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    SIMULATION$Preferential_VAT_Rate = preferential_VAT_rate

                    # Base for calculation 
                    SIMULATION_CALIBRATION_FACTOR<-SIMULATION
                    
        # 2.CHANGE OF SIMULATION POLICIES ------------------------------------------------
                    
               
                    SIMULATION<-data_edit(SIMULATION) #<-----Data Editor

                 
        # 3.RUNNING SIMULATION ---------------------------------------------------

                    # Iterate through the rest of the modules
                    source(file=paste(path1,"/Data preprocessing-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/VAT estimation-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/TaxCalc-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Estimation effective VAT rates-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Forecast-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Export-Module.R",sep=""),local=TRUE)
                    dashboard <- rmarkdown::render((file=paste(path1,"/VAT-Dashboard.Rmd",sep="")),params=list(args = myarg))
                    rstudioapi::viewer(dashboard)
                    