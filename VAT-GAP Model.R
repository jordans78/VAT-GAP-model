'VAT-GAP MODEL '          

' 
    Selection of NACE divisions for simulation:
                        
    For simulation purposes you will be able to choose one of the listed industries :
                        
    01,02,03,10-12,13-15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31-32,33,
    35,36,37-39,45,46,47,49,50,51,52,53,58,59-60,61,62-63,64,65,66,68A,68B,71,72,
    73,74-75,77,78,79,80-82,84,85,86,87-88,90-92,93,94,95,96,B,F,I,T
                        
    Hint: Select one of the divisions of NACE industries and copy-paste to the next code line. 
                              If the selection is zero, it means that no NACE division is selected and the code will not perform a simulation.
                              One NACE industry can be selected only once.For example if choose 35 this means that we have selected NACE division 35-Electricity, gas, steam and air-conditioning.)
                        
                        '
      rm(list=(ls()))

# Setting up path to directory with data 

        path<-"C:/Users/User/Documents/WB/VAT-GAP/3-New Version/VAT GAP in R/Model/DATA/INPUT" #<----Set your path here for data 
        path1<-"C:/Users/User/Documents/WB/VAT-GAP/3-New Version/VAT GAP in R/Model" #<----Set your path here for the scripts
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

        # 1.INPUT PARAMETERS FOR SIMULATION -----------------------------------------

                    standard_VAT_rate = 0.18
                    preferential_VAT_rate = 0.05
                    
                    # Name of the version of model
                    version_vat_model<-c("VAT_Model_v9.15b.xlsx")
                    
                    TAXABLE_PROPORTION_IMPORT <- read_excel(version_vat_model, sheet = "Simulation", col_names = F)[c(-1,-2,-3),] %>%
                      data.frame()
                    
                    # This is apply only on share on import 
                    
                    TAXABLE_PROPORTION_IMPORT<-TAXABLE_PROPORTION_IMPORT%>%
                      dplyr::select("...1","...10","...11","...12")%>%
                      dplyr:: rename(c("PRODUCT_INDUSTRY_CODE"= "...1",
                                       "Current_Policy_Exempt"="...10",
                                       "Current_Policy_Reduced_Rate"= "...11",
                                       "Current_Policy_Fully_Taxable"="...12"))%>%
                      dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                    
                    
                    TAXABLE_PROPORTION_IMPORT[2:4]<-as.numeric(unlist(TAXABLE_PROPORTION_IMPORT[2:4]))
                    
                    # Warning !!! This line only is applied for data for import              
                    SIMULATION<-TAXABLE_PROPORTION_IMPORT
                    SIMULATION$Current_Policy_Exempt[41] = 0 #  Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    SIMULATION$Standard_VAT_Rate = standard_VAT_rate
                    SIMULATION$Standard_VAT_Rate[41] = 0 # This is the industry: Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                    SIMULATION$Preferential_VAT_Rate = preferential_VAT_rate
                    SIMULATION$Simulation_Toggles_Exempt = NA
                    SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == 85] = 1
                    SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == 86] = 1
                    SIMULATION$Simulation_Toggles_Reduced_Rate = NA
                    
                    
                    #ACTIVED_TE<-1
                    TE_EXEMPT<-0.00
                    TE_REDUCED_RATE<-0.00
                    
                    
        # 2.CHANGE OF SIMULATION POLICIES ------------------------------------------------
                    
               
                    SIMULATION<-data_edit(SIMULATION) #<---------- Select lines from begging until this line and press Run
                    

        # 3.RUNNING SIMULATION ---------------------------------------------------

                    
                    source(file=paste(path1,"/Data preprocessing-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Simulation-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Estimation effective VAT rates-Module.R",sep=""),local=TRUE)
                    source(file=paste(path1,"/Export-Module.R",sep=""),local=TRUE)
                    
                    rmarkdown::render((file=paste(path1,"/VAT-Dashboard.Rmd",sep="")),params=list(args = myarg))
                    
                   # rm(list=(ls()))
                 
                    
                    