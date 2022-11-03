#VAT SIMULATOR########################################################################################################################################################
#                                                                                                                                                                    #
#                                                   VAT GAP SIMULATOR MODEL                                                                                                    #
#                                                                                                                                                                    #
#                                                                                                                                                                    #
#         https://ec.europa.eu/eurostat/ramon/relations/index.cfm?TargetUrl=LST_REL&StrLanguageCode=EN&IntCurrentPage=6                                                                                                                                                           #

                    # 1.INPUT PARAMETERS FOR SIMULATION -----------------------------------------
                          # 1.1 VAT STANDARD RATES ------------------------------------------------
rm(list=(ls()))
    '1.CHANGING VAT RATES'          
                        
                        ' 
                        A. Selection of NACE divisions for simulation:
                        
                        For simulation purposes you will be able to choose one of the listed industries :
                        
                        01,02,03,10-12,13-15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31-32,33,
                        35,36,37-39,45,46,47,49,50,51,52,53,58,59-60,61,62-63,64,65,66,68A,68B,71,72,
                        73,74-75,77,78,79,80-82,84,85,86,87-88,90-92,93,94,95,96,B,F,I,T
                        
                        Hint: Select one of the divisions of NACE industries and copy-paste to the next code line. 
                              If the selection is zero, it means that no NACE division is selected and the code will not perform a simulation.
                              One NACE industry can be selected only once.For example if choose 35 this means that we have selected NACE division 35-Electricity, gas, steam and air-conditioning.)
                        
                        '
                        Change_Industry_CR_1<-'01'  # <-----Input here 
                        Change_Industry_CR_2<-'10-12'
                        Change_Industry_CR_3<-'21'
                        
                        Standard_Rate_VAT_1<-0.18
                        Standard_Rate_VAT_2<-0.18
                        Standard_Rate_VAT_3<-0.18
                        
                        Preferential_Rate_VAT_1<-0.05
                        Preferential_Rate_VAT_2<-0.05
                        Preferential_Rate_VAT_3<-0.05
    
                        ' 
                        B.Input taxable proportion for simulation:
                        
                        If you enter 1, it means that all goods and services for the selected sector will be 100% exempt from VAT and vice versa 0 (0%)
                        
                        For example if choose 0.8 that means that 80% of goods and services will be exempted from VAT)
                        Hint: Values for a taxable proportion will be activated only after the fulfillment of two conditions. First is a selection of the NACE division and second with entering of value for percentage (e.g. 0.8 means 80%)
                        
                        '
                        Taxable_proportion_ex_industires_1<-1 # <-----Input here
                        Taxable_proportion_ex_industires_2<-1
                        Taxable_proportion_ex_industires_3<-1
    
                          # 1.2 VAT EXEMPTIONS ------------------------------------------------------
    
                        
                        
    '2.VAT EXEMPTIONS'          
                        
                        ' 
                        A. Selection of NACE divisions for simulation:
                        
                        For simulation purposes you will be able to choose one of the listed industries :
                        
                        01,02,03,10-12,13-15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31-32,33,
                        35,36,37-39,45,46,47,49,50,51,52,53,58,59-60,61,62-63,64,65,66,68A,68B,71,72,
                        73,74-75,77,78,79,80-82,84,85,86,87-88,90-92,93,94,95,96,B,F,I,T
                        
                        Hint: Select one of the divisions of NACE industries and copy-paste to the next code line. 
                              If the selection is zero, it means that no NACE division is selected and the code will not perform a simulation.
                              One NACE industry can be selected only once.For example if choose 35 this means that we have selected NACE division 35-Electricity, gas, steam and air-conditioning.)
                        
                        '
                        Exempt_Select_Industry_1<-'0'  # <-----Input here 
                        Exempt_Select_Industry_2<-'0'
                        Exempt_Select_Industry_3<-'0'
                        
                        
                        ' 
                        B.Input taxable proportion for simulation:
                        
                        If you enter 1, it means that all goods and services for the selected sector will be 100% exempt from VAT and vice versa 0 (0%)
                        
                        For example if choose 0.8 that means that 80% of goods and services will be exempted from VAT)
                        Hint: Values for a taxable proportion will be activated only after the fulfillment of two conditions. First is a selection of the NACE division and second with entering of value for percentage (e.g. 0.8 means 80%)
                        
                        '
                        Taxable_proportion_ex_industires_1<-1 # <-----Input here
                        Taxable_proportion_ex_industires_2<-1
                        Taxable_proportion_ex_industires_3<-1
                        
    
                          # 1.3 VAT REDUCED RATE ---------------------------------------------
    
    
    '3.VAT REDUCED RATE'          
                        
                        ' 
                        A. Selection of NACE divisions for simulation:
                        
                        For simulation purposes you will be able to choose one of the listed industries :
                        
                        01,02,03,10-12,13-15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31-32,33,
                        35,36,37-39,45,46,47,49,50,51,52,53,58,59-60,61,62-63,64,65,66,68A,68B,71,72,
                        73,74-75,77,78,79,80-82,84,85,86,87-88,90-92,93,94,95,96,B,F,I,T
                        
                        Hint: Select one of the divisions of NACE industries and copy-paste to the next code line. 
                              If the selection is zero, it means that no NACE division is selected and the code will not perform a simulation.
                              One NACE industry can be selected only once.
                        
                        '       
                        Reduced_Rate_Select_Industry_1<-'0' # (e.g For example if choose 35 this means that we have selected NACE division 35-Electricity, gas, steam and air-conditioning.)
                        Reduced_Rate_Select_Industry_2<-'0'
                        Reduced_Rate_Select_Industry_3<-'0'
                        
                        ' 
                        B.Input taxable proportion for simulation:
                        
                        If you enter 1, it means that all goods and services for the selected sector will be 100% will be taxed with reduced VAT rate and vice versa 0 (0%)
                        
                        Hint: Values for a taxable proportion will be activated only after the fulfillment of two conditions. First is a selection of the NACE division and second with entering of value for percentage (e.g. 0.8 means 80%)
                        
                        '
                        Taxable_proportion_reduced_industires_1<-0
                        Taxable_proportion_reduced_industires_2<-0
                        Taxable_proportion_reduced_industires_3<-0
                        
    
                          # 1.4 ESTIMATION OF TAX EXPENDITURES ------------------------------------------
    
    
    '4.ESTIMATION OF TAX EXPENDITURES'  
                        
                        ' 
                        
                        Hint: This function must be This feature should be activated independently without the previously listed features
                        
                        '
    
    
                        #ACTIVED_TE<-1
                        TE_EXEMPT<-0.00
                        TE_REDUCED_RATE<-0.00
    
    
                          # 1.5 SETTING MODEL PARAMETARS -------------------------------------------
    
    
                                            
    '5.SETTING MODEL PARAMETARS'                     
                        benchmark_tax_rate <- 0.18
                        RC_prc_of_Constructions_and_construction_works = 0.3
                        Locked_Calibration_Factor <- 0.755207774941413
                        standard_VAT_rate = 0.18
                        preferential_VAT_rate = 0.05
                        vat_rate_on_residential_construction = 0.05
                       
    
                    # 2. LOAD LIBRARIES AND FUNCTIONS ----
                    
                    gc(TRUE)
                    
                    library(data.table)
                    library(tidyr)
                    library(readxl)
                    library(dplyr)
                    library(reshape2)
                    library(rccmisc) 
                    
                    # Setting path to data 
                    path_1<-"C:/Users/User/Documents/WB/VAT-GAP/3-New Version/0-VAT GAP IN R/DATA/INPUT"
                    setwd(path_1)
                    getwd()
                    
                    # Defining a custom function to extract only English names from SUTs
                    trim <- function (x) gsub("^\\s+|\\s+$", "", x) 
                    input_output_matrix_to_long_data <- function(matrix){
                      
                      matrix <- matrix %>%
                        dplyr::filter(...2 != "NA")
                      
                      
                      colnames(matrix) <- matrix[1,]
                      
                      data <- matrix[c(-1,-2),c(-1,-2)] %>% as.matrix() %>% melt()
                      
                      product_industry_name <- matrix[[2]][c(-1,-2)]
                      product_industry_code <- matrix[[1]][c(-1,-2)]
                      industry_code <-  matrix[2,c(-1,-2)] %>% as.character()
                      
                      data$Var1 <- rep(product_industry_name, time = length(industry_code))
                      
                      data <- data %>% 
                        dplyr::rename(PRODUCT_INDUSTRY_NAME = Var1,
                                      INDUSTRY_NAME = Var2)
                      
                      
                      data$PRODUCT_INDUSTRY_CODE <- rep(product_industry_code, time = length(industry_code))
                      data$INDUSTRY_CODE <- rep(industry_code, each = length(product_industry_code))
                      
                      data <- data %>% 
                        dplyr::select(PRODUCT_INDUSTRY_NAME, PRODUCT_INDUSTRY_CODE, INDUSTRY_NAME, INDUSTRY_CODE, value)
                      
                      
                      # Leave the names only in English
                      data$PRODUCT_INDUSTRY_NAME<-gsub("^.*\\/", "",  data$PRODUCT_INDUSTRY_NAME) %>% trim()
                      data$INDUSTRY_NAME<-gsub("^.*\\/", "",  data$INDUSTRY_NAME) %>% trim()
                      
                      data$value <- as.numeric(as.character(data$value))
                      
                      return(data)
                      
                    }
                    
                    
                    
                    # 3. RAW DATA IMPORT AND PREPROCESS  ----- 
                    ' 
                    In this section data are imported from three files:
                    
                    VAT_Model_v9.15a.xlsx
                    Merged_VAT_data.xlsx 
                    NACE_SUT_table.xlsx
                    
                    '

                          # 3.1 SUTs ------------------------------------
    
                        # This data are stored in the Excel file  from VAT_Model_v9.15a
                        
                        SUPPLY <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Supply", col_names = F)[c(-1,-2,-3,-4),] %>% 
                          input_output_matrix_to_long_data()
                        
                        USE_PURCHASER <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_Purchaser", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                        
                        USE_VAT <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_VAT", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                        
                        USE_SUBSIDIES <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_Subsidies", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                        
                        USE_OTHERTAXES <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_OtherTaxes", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                        
                        USE_BASIC <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_Basic", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                        
                        USE_IMPORTS <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Use_Imports", col_names = F)[c(-1,-2,-3,-4),] %>%
                          input_output_matrix_to_long_data()
                 
                        

                          # 3.2 COICOP table ------------------------------------------------------------

                        
                        ## Data from COICOP table
                        
                        VAT_COICOP_NAMES <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "COICOP", col_names = F)[-c(1:2),c(2)]
                        VAT_COICOP_NAMES<-VAT_COICOP_NAMES[1:178,1]
                 
                        
                        VAT_COICOP_FC <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "COICOP", col_names = F)[-c(1:2),c(4:9)]
                        VAT_COICOP_FC<-VAT_COICOP_FC[1:178,1:6]
                        
                        
                        VAT_COICOP_FINAL_RAW<-cbind(VAT_COICOP_NAMES,VAT_COICOP_FC)
                        
                        VAT_COICOP_FINAL_RAW<-VAT_COICOP_FINAL_RAW%>%
                        dplyr:: rename(c("COICOP_Descriptions"= "...2",
                                         "FC"="...4",
                                          "EX"= "...5",
                                          "Reduced_Rate_5"="...6",
                                           "Standard_Rate_18"= "...7",
                                            "VAT_Revenue_5"="...8",
                                            "VAT_Revenue_18"="...9"
                                            
                          ))
                        
                        #Select NACE industries on four digits for calculation  
                        
                        VAT_COICOP_FINAL_RAW<-subset(VAT_COICOP_FINAL_RAW, grepl("^\\d{2}\\.\\d\\.\\d\\s+", COICOP_Descriptions))
                        
                        # Extract NACE codes
                        VAT_COICOP_FINAL_RAW$Four_digits<-substr(VAT_COICOP_FINAL_RAW$COICOP_Descriptions, 1, 6)
                        
                        VAT_COICOP_FINAL_RAW$Two_digits<-substr(VAT_COICOP_FINAL_RAW$COICOP_Descriptions, 1, 2)
                        
                        VAT_COICOP_FINAL_RAW[is.na(VAT_COICOP_FINAL_RAW)] <- 0
                        
                        VAT_COICOP_FINAL_RAW$EX<-as.numeric(VAT_COICOP_FINAL_RAW$EX)
                        VAT_COICOP_FINAL_RAW$VAT_Revenue_5<-as.numeric(VAT_COICOP_FINAL_RAW$VAT_Revenue_5)
                        # https://stackoverflow.com/questions/29549731/finding-percentage-in-a-sub-group-using-group-by-and-summarise
                        
                        ## Input raw concordance table
                        
                        VAT_Concordance <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "Concordance", col_names = T)
                        
                        # Merging table
                        VAT_COICOP_FINAL<-left_join(VAT_COICOP_FINAL_RAW,VAT_Concordance,by = c("COICOP_Descriptions"))
                        
                      
                        # Adjustment of CPA codes with Concordance table
                        
                        COICOP <- read_excel("VAT_Model_v9.15a.xlsx", sheet = "COICOP", col_names = F)[-c(1,2),-c(1:19)]
                        COICOP[1,1] <- "PRODUCT_INDUSTRY_CODE"
                        COICOP[1,5] <- "Negative"
                        
                        colnames(COICOP) <- c("PRODUCT_INDUSTRY_CODE", "Base",  "Exempt_Levels", "Reduced_Rate_Levels", "Negative", "Exempt_Adjustment", "Reduced_Rate_Adjustment", 
                                              "Exempt_Levels_2", "Reduced_Rate_Levels_2",
                                              "Exempt_Raw_perc", "Reduced_Rate_Raw_perc", "Exempt_Capped_perc", "Reduced_Rate_Capped_perc")
                        
                        COICOP <- COICOP[-c(1, 66:nrow(COICOP)),]
                        
                        COICOP <- COICOP %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                        
    
                          # 3.3 Data from import (Merged_VAT_data)------------------------------------
    
                          # Input structure by CPA and HS
                        
                        Merged_VAT_data <- read_excel("Merged_VAT_data.xlsx", sheet = "VAT_IMPORT_HS")
                        
                          # 3.4 Concordance table NACE_SUT ----------------------------------
    
                        NACE_SUT_table <- read_excel("NACE_SUT_table.xlsx", sheet = "NACE")
                        
                        CPA_COICOP_CONCORDANCE <- read_excel("NACE_SUT_table.xlsx", sheet = "CPA_COICOP_CONCORDANCE")
                        
                        
                        NACE_SUT_table<-NACE_SUT_table%>%
                          dplyr::select(divisions_sut,nace)
                        
                        # Detect import with reduced and exempted tax rates
                        
                        Merged_VAT_data_Group_5_18<-Merged_VAT_data%>%
                          dplyr::select(cpa_code,mkd_import,vat_rate)%>%
                          dplyr::group_by(cpa_code, vat_rate) %>%
                          dplyr::summarise(Total_import = sum(mkd_import, na.rm = T))
                        
                       
                        # Remove NaN. In data base there are some goods that are classified under code 9888770000	Undivided. This code can't not be calculated
                        Merged_VAT_data_Group=Merged_VAT_data_Group_5_18[!(is.na(Merged_VAT_data_Group_5_18$vat_rate) | Merged_VAT_data_Group_5_18$vat_rate==""), ]
                        
                       
                        # Pivot longer
                        
                        Merged_VAT_data_Group_5_18_Pivot<-Merged_VAT_data_Group %>%
                          pivot_wider(names_from = vat_rate , values_from = Total_import,values_fill = 0)
                        
                        
                        # Detect import exempt from VAT
                        
                        Merged_VAT_data_Group_Exempt<-Merged_VAT_data%>%
                          dplyr::select(cpa_code,mkd_import,vat_rate,effective_vat)%>%
                          dplyr:: filter(effective_vat<=2.5)%>%
                          dplyr::group_by(cpa_code,vat_rate) %>%
                          dplyr::summarise(Total_import = sum(mkd_import, na.rm = T))
                        
                        
                        # Remove NaN. In data base there are some goods that are classified under code 9888770000	Undivided. This code can't not be calculated
                        
                        Merged_VAT_data_Group_Exempt=Merged_VAT_data_Group_Exempt[!(is.na(Merged_VAT_data_Group_Exempt$vat_rate) | Merged_VAT_data_Group_Exempt$vat_rate==""), ]
                        
                        # Pivot longer
                        
                        Merged_VAT_data_Group_Exempt_Pivot<-Merged_VAT_data_Group_Exempt %>%
                          pivot_wider(names_from = vat_rate , values_from = Total_import,values_fill = 0)
                        
                        # Merged data 
                        
                        VAT_STRUCTURE<-left_join(Merged_VAT_data_Group_5_18_Pivot,Merged_VAT_data_Group_Exempt_Pivot,by = c("cpa_code"="cpa_code"))
                        VAT_STRUCTURE[is.na(VAT_STRUCTURE)] <- 0
                        
                        VAT_STRUCTURE_FINAL<-VAT_STRUCTURE%>%
                          dplyr::mutate(
                            EX=`5.y`+`18.y`,
                            Reduced_Rate_5 = `5.x`-`5.y`,
                            Standard_Rate_18 =`18.x`-`18.y`
                            )%>%
                          dplyr::select(-c(`5.x`,`18.x`,`5.y`,`18.y`))
                        
                        
                        VAT_STRUCTURE_FINAL<-left_join(VAT_STRUCTURE_FINAL,NACE_SUT_table,by = c("cpa_code"="nace"))
                        
                        VAT_STRUCTURE_FINAL<-VAT_STRUCTURE_FINAL%>%
                          dplyr::select(divisions_sut,EX,Reduced_Rate_5,Standard_Rate_18)%>%
                          dplyr::group_by(divisions_sut) %>%
                          dplyr::summarise(EX = sum(EX, na.rm = T),Reduced_Rate_5 = sum(Reduced_Rate_5, na.rm = T),Standard_Rate_18 = sum(Standard_Rate_18, na.rm = T))
                        
                        # View(VAT_STRUCTURE_FINAL)
                        # write.xlsx(as.data.frame(VAT_STRUCTURE_FINAL), file="VAT_STRUCTURE_FINAL.xlsx", sheetName="VAT_STRUCTURE_FINAL",append=TRUE, row.names=FALSE)
                          # 3.5 HBS  ----------------------------------------
                        # Import data
                        data4_hbs2016 <- read_excel("HSB/2016/data4_hbs2016.xls")
                        
                        data3_hbs2016<- read_excel("HSB/2016/data3_hbs2016.xls")
                        
                        
                        
                        #  Estimation of effective VAT rates by COICOP classification
                        
                        # VAT_COICOP_SIMULATION_FINAL1<-VAT_COICOP_SIMULATION%>%
                        #   group_by(Item) %>%
                        #   summarize(Consumption=sum(Consumption),TOTAL_VAT_EXISTING=sum(TOTAL_VAT_EXISTING),TOTAL_VAT_SIMULATION=sum(TOTAL_VAT_SIMULATION))
                        # 
                        # VAT_COICOP_SIMULATION_FINAL2<-mutate(VAT_COICOP_SIMULATION_FINAL1,
                        #                                      #Effective_rate=TOTAL_VAT_REVENUE/Consumption
                        #                                      EFFECTIVE_RATES_EXISTING=round(TOTAL_VAT_EXISTING/Consumption,3),
                        #                                      EFFECTIVE_RATES_NEW=round(TOTAL_VAT_SIMULATION/Consumption,3))
                        # #Effective_rate=TOTAL_VAT_REVENUE/Consumption)
                        # #VAT_COICOP_SIMULATION_FINAL3<-VAT_COICOP_SIMULATION_FINAL2[-1, ]
                        # VAT_COICOP_SIMULATION_FINAL3<-VAT_COICOP_SIMULATION_FINAL2  #OVA da se proveri dali e tocno 01-08-2020
                        # #View(VAT_COICOP_SIMULATION_FINAL3)
                        
                        # Setting columns names
                        
                       
                        
                        data4_hbs2016<-data4_hbs2016%>%
                          dplyr::select(-c('kvartal','Year'))
                        
                        
                        colnames(data4_hbs2016)<-c("number_hh","01","02","03","04","05","06","07","08","09","10","11","12","Consumption_own")
                        
                        # Preparing data for merging 
                        
                        data4_hbs2016_long<-data4_hbs2016%>%
                          pivot_longer(!number_hh, names_to = "COICOP_section", values_to = "Expenditures")
                        
                                            # data4_hbs2016_group<-data4_hbs2016%>%
                        #   dplyr::group_by(number_hh) %>%
                        #   dplyr::summarise()
                        
                        # Ova da se proveri ne mi e sigurno 28-12-2019
                        #SO OGLED DEKA STAVKITE SE AGREGATNI ODNOSNO SODRZAT PROIZVODI KOI SE OSLOBODENI ILI SE ODANOCUVAAT SO 5% I 18% VO OVAA KALKULACIJA SE KORISTENI EFEKTIVNI DANOCNI STAPKI.ISTITE SE PRESMETANI 
                        # SPORED COICOP BAZATA KAKO TRI GODISEN PROSEK (moze se misli samo na struktura)
                        # CUDIM ? Da se proveri dali e bash tri godisen prosek
                       
                        
              
                        
                    # 4. AGGREGATE DATA IN LISTS -----
                      
                      PRODUCT_INDUSTRY_AGGREGATE <- as.list(c(1:4))
                      names(PRODUCT_INDUSTRY_AGGREGATE) = c("Supply", "Use_Purchaser", "Use_VAT", "Use_Basic")
                      
                      INDUSTRY_AGGREGATE <- as.list(c(1:4))
                      names(INDUSTRY_AGGREGATE) = c("Supply", "Use_Purchaser", "Use_VAT", "Use_Basic")
                      
                      
                          # 4.1 Supply matrix -----
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Supply <- SUPPLY %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_output = sum(value, na.rm = T))
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Supply <- SUPPLY %>%
                              dplyr::filter(INDUSTRY_NAME == "Imports CIF") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Supply, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Imports_CIF = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Supply <- SUPPLY %>%
                              dplyr::filter(INDUSTRY_NAME == "Trade and transport margins") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Supply, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Trade_and_transport_margins = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Supply <- SUPPLY %>%
                              dplyr::filter(INDUSTRY_NAME == "Taxes less subsidies on products") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Supply, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Taxes_less_subsidies_on_products = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Supply <- PRODUCT_INDUSTRY_AGGREGATE$Supply %>%
                              dplyr::mutate(Total_supply_at_basic_prices = psum(Total_output,Imports_CIF, na.rm=TRUE),
                                            Total_supply_at_purchasers_prices = psum(Total_supply_at_basic_prices,
                                                                                     Trade_and_transport_margins,
                                                                                     Taxes_less_subsidies_on_products, na.rm=TRUE))
                            
                            INDUSTRY_AGGREGATE$Supply <- SUPPLY %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_output_by_industries_at_basic_prices = sum(value, na.rm = T))
      
                          # 4.2 Use Purchaser matrix ----
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_intermediate_consumption_at_purchasers_prices = sum(value, na.rm = T))
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <-  USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by households") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_households = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by non-profit organisations serving households (NPISH)") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_NPISH = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by government") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_government = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Gross fixed capital formation") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Gross_fixed_capital_formation = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Changes in inventories and acquisition less disposals of valuables") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Changes_in_inventories_and_acquisition_less_disposals_of_valuables = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>%
                              dplyr::filter(INDUSTRY_NAME == "Exports FOB") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Exports_FOB = value)
                            
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser %>%
                              dplyr::mutate(Total_final_consumption_expenditure_at_purchasers_prices = psum(Final_consumption_expenditure_by_households,
                                                                                                            Final_consumption_expenditure_NPISH,
                                                                                                            Final_consumption_expenditure_by_government, na.rm=TRUE),
                                            Gross_capital_formation = psum(Gross_fixed_capital_formation,
                                                                           Changes_in_inventories_and_acquisition_less_disposals_of_valuables, na.rm=TRUE),
                                            Total_final_uses_at_purchasers_prices = psum(Total_final_consumption_expenditure_at_purchasers_prices,
                                                                                         Gross_capital_formation,
                                                                                         Exports_FOB, na.rm=TRUE),
                                            Total_use_at_purchasers_prices = psum(Total_intermediate_consumption_at_purchasers_prices,
                                                                                  Total_final_uses_at_purchasers_prices, na.rm=TRUE))
      
                            
                            INDUSTRY_AGGREGATE$Use_Purchaser <- USE_PURCHASER %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_intermediate_consumption_by_industries_at_purchasers_prices = sum(value, na.rm = T))
                            
      
                          # 4.3 Use Basic matrix ----
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_intermediate_consumption_at_basic_prices = sum(value, na.rm = T))
                           
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by households") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_households = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by non-profit organisations serving households (NPISH)") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_NPISH = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by government") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_government = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Gross fixed capital formation") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Gross_fixed_capital_formation = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Changes in inventories and acquisition less disposals of valuables") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Changes_in_inventories_and_acquisition_less_disposals_of_valuables = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>%
                              dplyr::filter(INDUSTRY_NAME == "Exports FOB") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Exports_FOB = value)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic$Exports_FOB[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_Basic$Exports_FOB)] <- 0
                            
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- PRODUCT_INDUSTRY_AGGREGATE$Use_Basic %>%
                              dplyr::mutate(Total_final_consumption_expenditure_at_basic_prices = psum(
                                                                                                       Final_consumption_expenditure_by_households,
                                                                                                       Final_consumption_expenditure_NPISH,
                                                                                                       Final_consumption_expenditure_by_government,
                                                                                                       na.rm=TRUE),
                                            Gross_capital_formation = psum(
                                                                           Gross_fixed_capital_formation,
                                                                           Changes_in_inventories_and_acquisition_less_disposals_of_valuables,
                                                                           na.rm=TRUE),
                                            Total_final_uses_at_basic_prices = psum(Total_final_consumption_expenditure_at_basic_prices,
                                                                                    Gross_capital_formation,
                                                                                    Exports_FOB,
                                                                                    na.rm=TRUE),
                                            Total_use_at_basic_prices = psum(Total_intermediate_consumption_at_basic_prices,
                                                                             Total_final_uses_at_basic_prices,
                                                                            # Exports_FOB,
                                                                             na.rm=TRUE))
                              
      
                            INDUSTRY_AGGREGATE$Use_Basic <- USE_BASIC %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_intermediate_consumption_by_industries_at_basic_prices = sum(value, na.rm = T))
                            
      
                          # 4.4 Use VAT matrix----
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_intermediate_consumption_at_basic_prices = sum(value, na.rm = T))
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by households") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_households = value)
                            
      
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by non-profit organisations serving households (NPISH)") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_NPISH = value)
                            
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Final consumption expenditure by government") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Final_consumption_expenditure_by_government = value)
                            
      
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Gross fixed capital formation") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Gross_fixed_capital_formation = value)
                            
      
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Changes in inventories and acquisition less disposals of valuables") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Changes_in_inventories_and_acquisition_less_disposals_of_valuables = value)
                            
      
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>%
                              dplyr::filter(INDUSTRY_NAME == "Exports FOB") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, value) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT, key = "PRODUCT_INDUSTRY_CODE") %>%
                              dplyr::rename(Exports_FOB = value)
                            
      
                            PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- PRODUCT_INDUSTRY_AGGREGATE$Use_VAT %>%
                              dplyr::mutate(Total_final_consumption_expenditure_at_basic_prices = psum(Final_consumption_expenditure_by_households,
                                                                                                       Final_consumption_expenditure_NPISH,
                                                                                                       Final_consumption_expenditure_by_government,
                                                                                                       na.rm=TRUE),
                                            Gross_capital_formation = psum(Gross_fixed_capital_formation,
                                                                           Changes_in_inventories_and_acquisition_less_disposals_of_valuables,
                                                                           na.rm=TRUE),
                                            Total_final_uses_at_basic_prices = psum(Total_final_consumption_expenditure_at_basic_prices,
                                                                                    Gross_capital_formation,
                                                                                    Exports_FOB,
                                                                                    na.rm=TRUE),
                                            Total_use_at_basic_prices = psum(Total_intermediate_consumption_at_basic_prices,
                                                                             Total_final_uses_at_basic_prices,
                                                                             na.rm=TRUE))
      
                            INDUSTRY_AGGREGATE$Use_VAT <- USE_VAT %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_VAT = sum(value, na.rm = T))
                           
                    # 5. ESTIMATION -----
                          # 5.1 Arrange Aggregate Industries and Products ---------------------------
                      # Arrange Aggregate Industries
                      INDUSTRY_AGGREGATE$Supply <- INDUSTRY_AGGREGATE$Supply %>%
                        dplyr::arrange(INDUSTRY_CODE)
                      INDUSTRY_AGGREGATE$Use_Purchaser <- INDUSTRY_AGGREGATE$Use_Purchaser %>%
                        dplyr::arrange(INDUSTRY_CODE)
                      INDUSTRY_AGGREGATE$Use_VAT <- INDUSTRY_AGGREGATE$Use_VAT %>%
                        dplyr::arrange(INDUSTRY_CODE)
                      INDUSTRY_AGGREGATE$Use_Basic <- INDUSTRY_AGGREGATE$Use_Basic %>%
                        dplyr::arrange(INDUSTRY_CODE)
                      
                      # View(INDUSTRY_AGGREGATE)
                      
                      # Arrange Aggregate Products
                      
                      PRODUCT_INDUSTRY_AGGREGATE$Supply <- PRODUCT_INDUSTRY_AGGREGATE$Supply %>%
                        dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                      PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser <- PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser %>%
                        dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                      PRODUCT_INDUSTRY_AGGREGATE$Use_VAT <- PRODUCT_INDUSTRY_AGGREGATE$Use_VAT %>%
                        dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                      PRODUCT_INDUSTRY_AGGREGATE$Use_Basic <- PRODUCT_INDUSTRY_AGGREGATE$Use_Basic %>%
                        dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                      
                      # View(PRODUCT_INDUSTRY_AGGREGATE)
                      
                          # 5.2 Domestic Share matrix-----
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Dom_Share <- PRODUCT_INDUSTRY_AGGREGATE$Supply %>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Dom_Share$Domestic_share_of_output_commodity <- 
                          pmax(1-PRODUCT_INDUSTRY_AGGREGATE$Use_Basic$Exports_FOB/PRODUCT_INDUSTRY_AGGREGATE$Supply$Total_output,0)
                        
                        
                        DOM_SHARE <- SUPPLY %>%
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::group_by(PRODUCT_INDUSTRY_CODE) %>%
                          dplyr::arrange(INDUSTRY_CODE) %>%
                          dplyr::mutate(value = value/INDUSTRY_AGGREGATE$Supply$Total_output_by_industries_at_basic_prices) %>%
                          merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Dom_Share, key = "PRODUCT_INDUSTRY_CODE") %>%
                          dplyr::mutate(value = value*Domestic_share_of_output_commodity) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                        
                  
                        INDUSTRY_AGGREGATE$Dom_Share <- DOM_SHARE %>% 
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                          dplyr::summarise(Domestic_Share_of_Output_Industry = sum(value, na.rm = T))
                        
                        
                          # 5.3 Net purchaser prices -----------
                        
                        USE_NETPURCH <- USE_PURCHASER %>%
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
  
                        
                        USE_VAT_temp <- USE_VAT %>% 
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                        
                        USE_NETPURCH$value[is.na(USE_NETPURCH$value)] <- 0
                        USE_VAT_temp$value[is.na(USE_VAT_temp$value)] <- 0
                        
                        USE_NETPURCH$value <- USE_NETPURCH$value - USE_VAT_temp$value 
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch <- USE_NETPURCH %>% 
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                          dplyr::summarise(Total_intermediate_consumption_net_purchasers_prices = sum(value, na.rm = T))
                        
            
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch <- PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch %>% 
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Gross_fixed_capital_formation[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Gross_fixed_capital_formation)] <- 0
                        PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Gross_fixed_capital_formation[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Gross_fixed_capital_formation)] <- 0
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation = 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Gross_fixed_capital_formation - 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Gross_fixed_capital_formation    
       
                        # Here I set the missing values of "Gross_fixed_capital_formation" to zero!
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation)] <- 0
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_households[is.na( PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_households)] <- 0
                        PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_households[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_households)] <- 0
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_by_households = 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_households - 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_households
   
                        PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_NPISH[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_NPISH)] <- 0
                        PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_NPISH[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_NPISH)] <- 0
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_NPISH = 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_NPISH - 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_NPISH
  
                        PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_government[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_government)] <- 0
                        PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_government[is.na( PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_government)] <- 0
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_by_government =
                          PRODUCT_INDUSTRY_AGGREGATE$Use_Purchaser$Final_consumption_expenditure_by_government - 
                          PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Final_consumption_expenditure_by_government
                        
                        
                          # 5.4 K_Shift_Map ----
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map <- USE_NETPURCH %>% 
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::distinct(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                          dplyr::mutate(Share_of_K_in_HH_FD = 0)
                        
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Share_of_K_in_HH_FD[grepl("Constructions and construction works", PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$PRODUCT_INDUSTRY_NAME)] = 
                          RC_prc_of_Constructions_and_construction_works
                        
                        
                        # WARNING: the formula includes (1-$BUx) but this seems to be not clear how it is caclulated. 
                        # It is zero for all cases but one where it takes value from the simulation of 0.7.
                        K_SHIFT_MAP <- USE_NETPURCH %>%
                          merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch, key = "PRODUCT_INDUSTRY_CODE") %>%
                          merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map, key = "PRODUCT_INDUSTRY_CODE") %>%
                          dplyr::mutate(value = value/Total_intermediate_consumption_net_purchasers_prices*(1-Share_of_K_in_HH_FD)) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE) %>%
                          dplyr::select(-Share_of_K_in_HH_FD)
                        
  # Greska ovde fali cela kona Effective VAT Rate in FD. Znaci cela kolona treba da se vovede i da se stavi 14% spored Excel modelot
                        
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_by_households = PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Share_of_K_in_HH_FD
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_NPISH = 0
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_by_government = 0
                        
                          # 5.5 Use_K_NetPurch -----
                        
                        USE_K_NETPURCH <- K_SHIFT_MAP %>%
                          merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch, key = "PRODUCT_INDUSTRY_CODE") %>%
                          dplyr::mutate(value = value*Gross_fixed_capital_formation) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                        
                        USE_NETPURCH <- USE_NETPURCH %>% dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
  
                        
                        USE_K_NETPURCH$value <- USE_K_NETPURCH$value + USE_NETPURCH$value 
                        
               
                        PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch <- PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME)
                        
                        PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map <- PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME)
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch <- PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch %>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME)
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_households <-
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_by_households+
                          PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_by_households*
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation
  
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_NPISH <-
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_NPISH+
                          PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_NPISH*
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation
                        
           
                        # Replace NAs with zero
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_NPISH[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_NPISH)] <- 0
                        
                        
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_government <-
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Final_consumption_expenditure_by_government+
                          PRODUCT_INDUSTRY_AGGREGATE$K_Shift_Map$Final_consumption_expenditure_by_government*
                          PRODUCT_INDUSTRY_AGGREGATE$Use_NetPurch$Gross_fixed_capital_formation
                        
                        # Replace NAs with zero
                        PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_government[is.na(PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_government)] <- 0
                        
                          # 5.6 Use_K_Dom_NetPurch -----
                        
                        USE_K_DOM_NETPURCH <- USE_K_NETPURCH %>%
                          dplyr::select(PRODUCT_INDUSTRY_NAME, PRODUCT_INDUSTRY_CODE, INDUSTRY_NAME, INDUSTRY_CODE, value) %>%
                          merge.data.frame(INDUSTRY_AGGREGATE$Dom_Share, key = "INDUSTRY_CODE") %>%
                          dplyr::mutate(value = value*Domestic_Share_of_Output_Industry) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                        
                      
                        
                          # 5.7 Supply_Dom -----
                        
                        SUPPLY_DOM <- SUPPLY %>%
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Dom_Share, key = "PRODUCT_INDUSTRY_CODE") %>%
                          dplyr::mutate(value = value*Domestic_share_of_output_commodity) %>%
                          dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
      
                        INDUSTRY_AGGREGATE$Supply_Dom <- SUPPLY_DOM %>% 
                          dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                          dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                          dplyr::summarise(Total_output_by_industries_at_basic_prices = sum(value, na.rm = T))
  
                    # 6. SIMULATION ----
                          # 6.1 Pre-processing COICOP and setting parameters for simulation ------------------------------------------
                            # 6.1.1 Aggregate table for COICOP----------------------------------------
    
                          # New  Aggregation for FINAL COICOP TABLE
                          SUPPLY_DOM_AGGREGATE_1<-SUPPLY_DOM%>%
                            #dplyr::select(INDUSTRY_CODE,value)%>%
                            dplyr::select(PRODUCT_INDUSTRY_CODE,value)%>%
                            dplyr::group_by(PRODUCT_INDUSTRY_CODE)%>%
                            dplyr::summarize(value=sum(value,na.rm = TRUE))%>%
                            dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                           # View(SUPPLY_DOM_AGGREGATE_1)
                          
                            SUPPLY_DOM_AGGREGATE_1$value[is.na(SUPPLY_DOM_AGGREGATE_1$value)] <- 0
                            
                          PRODUCT_INDUSTRY_AGGREGATE_1<-PRODUCT_INDUSTRY_AGGREGATE$Supply%>%
                            dplyr::select(PRODUCT_INDUSTRY_CODE,Imports_CIF)%>%
                            dplyr::group_by(PRODUCT_INDUSTRY_CODE )%>%
                            dplyr::summarize(value=sum(Imports_CIF,na.rm = TRUE))
                          
                          PRODUCT_INDUSTRY_AGGREGATE_1$value[is.na(PRODUCT_INDUSTRY_AGGREGATE_1$value)] <- 0
                         
                          # Sum of columns for Base
                          COICOP$Base <- SUPPLY_DOM_AGGREGATE_1$value + PRODUCT_INDUSTRY_AGGREGATE_1$value
                          
                          # Adding columns for Exempt	and Reduced-Rate Levels
                          VAT_COICOP_FINAL_GROUPED<-VAT_COICOP_FINAL%>%
                            dplyr::select(Reduce_or_Exempted,EX,Reduced_Rate_5,Standard_Rate_18)%>%
                            dplyr::group_by(Reduce_or_Exempted )%>%
                            dplyr::summarize(EX=sum(as.numeric(EX),na.rm = TRUE),
                                             Reduced_Rate_5=sum(Reduced_Rate_5,na.rm = TRUE))
    
                          COICOP_MERGED<-left_join(COICOP,VAT_COICOP_FINAL_GROUPED,by = c("PRODUCT_INDUSTRY_CODE"="Reduce_or_Exempted"))
                          
                          # This column is calculated
                          COICOP_MERGED$Negatives<-pmin((COICOP_MERGED$Base-COICOP_MERGED$EX-COICOP_MERGED$Reduced_Rate_5),0)
                            
                          # Adjustment-This column is not calculated  <---- WARNING !!!!!
                          COICOP_MERGED$Exempt_Adjustment<-as.numeric(as.character(COICOP_MERGED$Exempt_Adjustment))
                          COICOP_MERGED$Reduced_Rate_Adjustment <-as.numeric(as.character(COICOP_MERGED$Reduced_Rate_Adjustment ))
                          
                          # Levels - This column is calculated
                          COICOP_MERGED$Exempt_Adjustment[is.na(COICOP_MERGED$Exempt_Adjustment)] <- 0
                          COICOP_MERGED$Exempt_Levels_2<-as.numeric(COICOP_MERGED$Exempt_Levels)+as.numeric(COICOP_MERGED$Exempt_Adjustment)
                          
                          COICOP_MERGED$Reduced_Rate_Adjustment[is.na(COICOP_MERGED$Reduced_Rate_Adjustment)] <- 0
                          COICOP_MERGED$Reduced_Rate_Levels_2<-as.numeric(COICOP_MERGED$Reduced_Rate_Levels)+as.numeric(COICOP_MERGED$Reduced_Rate_Adjustment)
    
                          # Raw - This column is calculated
                          COICOP_MERGED$Exempt_Raw_perc<-COICOP_MERGED$Exempt_Levels_2/COICOP_MERGED$Base
                          COICOP_MERGED$Reduced_Rate_Raw_perc<-COICOP_MERGED$Reduced_Rate_Levels_2/COICOP_MERGED$Base
                          
                          # Capped - This column is calculated
                          COICOP_MERGED$Exempt_Capped_perc<-pmax(pmin(COICOP_MERGED$Exempt_Raw_perc,1),0)
                          COICOP_MERGED$Reduced_Rate_Capped_perc<-pmax(pmin(COICOP_MERGED$Reduced_Rate_Raw_perc,1),0)
                         
                          COICOP_MERGED[is.na(COICOP_MERGED)] <- 0
                          
                          SIMULATION <- COICOP_MERGED %>%
                            dplyr::select(PRODUCT_INDUSTRY_CODE, Exempt_Capped_perc, Reduced_Rate_Capped_perc) %>%
                            dplyr::mutate(Current_Policy_Fully_Taxable = 1-Exempt_Capped_perc-Reduced_Rate_Capped_perc) %>%
                            dplyr::rename(Current_Policy_Exempt = Exempt_Capped_perc,
                                          Current_Policy_Reduced_Rate = Reduced_Rate_Capped_perc)%>%
                            dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                          
                          
                          SIMULATION$Current_Policy_Exempt[41] = 0 # This is the industry: Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                          # The number 41 should be replace by the name of the industry in the future
                          
                          SIMULATION$Standard_VAT_Rate = standard_VAT_rate
                          SIMULATION$Standard_VAT_Rate[41] = 0 # This is the industry: Imputed rents of owner-occupied dwellings with the industry code: 68A/ 68A
                          SIMULATION$Preferential_VAT_Rate = preferential_VAT_rate
                          
                          SIMULATION$Simulation_Toggles_Exempt = NA
                          
                          SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == 85] = 1
                          SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == 86] = 1
                          
                          SIMULATION$Simulation_Toggles_Reduced_Rate = NA
    
    
                            # 6.1.2 Simulation toggles changing VAT rates and affected industries ------------
    
                      # Changing standard VAT rates
                          SIMULATION$Standard_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_1] = Standard_Rate_VAT_1
                          SIMULATION$Standard_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_2] = Standard_Rate_VAT_2
                          SIMULATION$Standard_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_3] = Standard_Rate_VAT_3
                          
                          ## Changing preferential VAT rates
                          SIMULATION$Preferential_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_1] = Preferential_Rate_VAT_1
                          SIMULATION$Preferential_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_2] = Preferential_Rate_VAT_2
                          SIMULATION$Preferential_VAT_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Change_Industry_CR_3] = Preferential_Rate_VAT_3
    
                      # Input Exempted Industries 
                          SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == Exempt_Select_Industry_1] = Taxable_proportion_ex_industires_1 
                          SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == Exempt_Select_Industry_2] = Taxable_proportion_ex_industires_2 
                          SIMULATION$Simulation_Toggles_Exempt[SIMULATION$PRODUCT_INDUSTRY_CODE == Exempt_Select_Industry_3] = Taxable_proportion_ex_industires_3
                          
                      # Input Reduced Industries 
                          SIMULATION$Simulation_Toggles_Reduced_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Reduced_Rate_Select_Industry_1] = Taxable_proportion_reduced_industires_1
                          SIMULATION$Simulation_Toggles_Reduced_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Reduced_Rate_Select_Industry_2] = Taxable_proportion_reduced_industires_2
                          SIMULATION$Simulation_Toggles_Reduced_Rate[SIMULATION$PRODUCT_INDUSTRY_CODE == Reduced_Rate_Select_Industry_3] = Taxable_proportion_reduced_industires_3
    
                          SIMULATION <- SIMULATION %>%
                            dplyr::mutate(Simulated_Policy_Exempt = ifelse(is.na(Simulation_Toggles_Exempt), Current_Policy_Exempt, Simulation_Toggles_Exempt),
                                          Simulated_Policy_Reduced_Rate = ifelse(is.na(Simulation_Toggles_Reduced_Rate), Current_Policy_Reduced_Rate, Simulation_Toggles_Reduced_Rate),
                                          Simulated_Policy_Fully_Taxable = 1-Simulated_Policy_Exempt-Simulated_Policy_Reduced_Rate)
                          
                          #View(SIMULATION)
                          
    
                            # 6.1.3 Estimation of TE part -----------------------------------------------------
    '
    Warning
    This part begins with copy-paste of the parameters entered previously and from this point begins with their new calculation with the aim of obtaining TE
    '
    
                          
                          SIMULATION_1 = copy(SIMULATION)
                          
                          SIMULATION_1$Simulation_Toggles_Reduced_Rate<-TE_EXEMPT
                          SIMULATION_1$Simulation_Toggles_Exempt<-TE_REDUCED_RATE
                   
                          
                          SIMULATION_1 <- SIMULATION_1 %>%
                            dplyr::mutate(Simulated_Policy_Exempt = ifelse(is.na(Simulation_Toggles_Exempt), Current_Policy_Exempt, Simulation_Toggles_Exempt),
                                          Simulated_Policy_Reduced_Rate = ifelse(is.na(Simulation_Toggles_Reduced_Rate), Current_Policy_Reduced_Rate, Simulation_Toggles_Reduced_Rate),
                                          Simulated_Policy_Fully_Taxable = 1-Simulated_Policy_Exempt-Simulated_Policy_Reduced_Rate)
                          

                            # 6.1.4 Estimation of effective VAT RATE ----------------------------------------------------------
                          
                          SIMULATION_2 = copy(SIMULATION)
                          
                          SIMULATION_2$Simulation_Toggles_Reduced_Rate<-TE_EXEMPT
                          #SIMULATION_2$Simulation_Toggles_Exempt<-TE_REDUCED_RATE # <--For calculation of effective VAT rate this not needed
                          
                          
                          SIMULATION_2 <- SIMULATION_2 %>%
                            dplyr::mutate(Simulated_Policy_Exempt = ifelse(is.na(Simulation_Toggles_Exempt), Current_Policy_Exempt, Simulation_Toggles_Exempt),
                                          Simulated_Policy_Reduced_Rate = ifelse(is.na(Simulation_Toggles_Reduced_Rate), Current_Policy_Reduced_Rate, Simulation_Toggles_Reduced_Rate),
                                          Simulated_Policy_Fully_Taxable = 1-Simulated_Policy_Exempt-Simulated_Policy_Reduced_Rate)
                          
                          # 6.2 Benchmark revenues -----
                          
                          benchmark_tax_rate <- benchmark_tax_rate
                          # I use the data from "Use_K_NetPurch" instead of "Use_K_Dom_NetPurch" to avoid redundancies because it is the same data.
                          
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev <- PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch %>%
                            dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, Final_consumption_expenditure_by_households) %>%
                            dplyr::mutate(Final_Demand_HH = Final_consumption_expenditure_by_households*benchmark_tax_rate) %>%
                            dplyr::select(-Final_consumption_expenditure_by_households)
                          
                          # I set NA as well as the value of industry "Imputed rents of owner-occupied dwellings" to zero following the excel document.
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_HH[is.na(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_HH)] <- 0
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_HH[grepl("Imputed rents of owner-occupied dwellings", PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$PRODUCT_INDUSTRY_NAME)] <- 0
                          
                          # I use the data from "Use_K_NetPurch" instead of "Use_K_Dom_NetPurch" to avoid redundancies because it is the same data.
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_NPISH <- PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_NPISH*benchmark_tax_rate
                          
                          # I set NA as well as the value of industry "Imputed rents of owner-occupied dwellings" to zero following the excel document.
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_NPISH[is.na(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_NPISH)] <- 0
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_NPISH[grepl("Imputed rents of owner-occupied dwellings", PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$PRODUCT_INDUSTRY_NAME)] <- 0
                          
                          
                          # I use the data from "Use_K_NetPurch" instead of "Use_K_Dom_NetPurch" to avoid redundancies because it is the same data.
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Government <- PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_government*benchmark_tax_rate
                          
                          
                          # I set NA as well as the value of industry "Imputed rents of owner-occupied dwellings" to zero following the excel document.
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Government[is.na(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Government)] <- 0
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Government[grepl("Imputed rents of owner-occupied dwellings", PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$PRODUCT_INDUSTRY_NAME)] <- 0
                          
                          # sum(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Government,na.rm=TRUE) result 1256.934  Greska 17392.09  treba da bide
                          
                          
                          # Make the Toal Final Demand
                          # Note that "Total Revenues from Intermediate Inputs" is not included in the "Final_Demand_Total" because the all values of "BM Rev" are zero
                          
                          # We set "Final_Demand_HH" to zero for "Constructions and construction works" following the model given in excel
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_HH[grepl("Constructions and construction works", PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$PRODUCT_INDUSTRY_NAME)] = 0
                          
                          
                          PRODUCT_INDUSTRY_AGGREGATE$BM_Rev <- PRODUCT_INDUSTRY_AGGREGATE$BM_Rev %>%
                            dplyr::mutate(Final_Demand_Total = psum(Final_Demand_HH, Final_Demand_NPISH, Final_Demand_Government))
                         
                          Sum_of_Final_Demand_Total = sum(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Total)
    
                          # 6.3 Est.IS ----
                            # 6.3.1 Main estimation  --------------------------------------------------
        
                            EST.IS <- merge.data.frame(SUPPLY_DOM, SIMULATION, key = "PRODUCT_INDUSTRY_CODE")
                            EST.IS$value = EST.IS$value*EST.IS$Simulated_Policy_Exempt
      
                            EST.IS <- EST.IS %>% select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, INDUSTRY_CODE, INDUSTRY_NAME, value)
                            EST.IS$value[is.na(EST.IS$value)] <- 0
      
                            INDUSTRY_AGGREGATE$Est.IS <- EST.IS %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Industry_Share = sum(value, na.rm = T))
      
                            INDUSTRY_AGGREGATE$Est.IS <- INDUSTRY_AGGREGATE$Est.IS %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE$Supply_Dom <- INDUSTRY_AGGREGATE$Supply_Dom %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE$Est.IS$Industry_Share <- INDUSTRY_AGGREGATE$Est.IS$Industry_Share/INDUSTRY_AGGREGATE$Supply_Dom$Total_output_by_industries_at_basic_prices
                            
                            INDUSTRY_AGGREGATE$Est.IS$Industry_Share[is.na(INDUSTRY_AGGREGATE$Est.IS$Industry_Share)] <- 0
                            
                            # 6.3.2 Estimation of TE part ---------------------------------------------------
      
                            # Copy paste table
                            SUPPLY_DOM_1 = copy(SUPPLY_DOM)
                            INDUSTRY_AGGREGATE_1 = copy(INDUSTRY_AGGREGATE)
                            
                            EST.IS_1 <- merge.data.frame(SUPPLY_DOM_1, SIMULATION_1, key = "PRODUCT_INDUSTRY_CODE")
                            EST.IS_1$value = EST.IS_1$value*EST.IS_1$Simulated_Policy_Exempt
                            
                            EST.IS_1 <- EST.IS_1 %>% select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, INDUSTRY_CODE, INDUSTRY_NAME, value)
                            EST.IS_1$value[is.na(EST.IS_1$value)] <- 0
                            
                            INDUSTRY_AGGREGATE_1$Est.IS <- EST.IS_1 %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Industry_Share = sum(value, na.rm = T))
                            
                            INDUSTRY_AGGREGATE_1$Est.IS <- INDUSTRY_AGGREGATE_1$Est.IS %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE_1$Supply_Dom <- INDUSTRY_AGGREGATE_1$Supply_Dom %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE_1$Est.IS$Industry_Share <- INDUSTRY_AGGREGATE_1$Est.IS$Industry_Share/INDUSTRY_AGGREGATE_1$Supply_Dom$Total_output_by_industries_at_basic_prices
                            
                            INDUSTRY_AGGREGATE_1$Est.IS$Industry_Share[is.na(INDUSTRY_AGGREGATE_1$Est.IS$Industry_Share)] <- 0

                            # 6.3.4 Estimation of effective VAT RATE ----------------------------------------
                            # Copy paste table
                            SUPPLY_DOM_2 = copy(SUPPLY_DOM)
                            INDUSTRY_AGGREGATE_2 = copy(INDUSTRY_AGGREGATE)
                            
                            EST.IS_2 <- merge.data.frame(SUPPLY_DOM_2, SIMULATION_2, key = "PRODUCT_INDUSTRY_CODE")
                            EST.IS_2$value = EST.IS_2$value*EST.IS_2$Simulated_Policy_Exempt
                            
                            EST.IS_2 <- EST.IS_2 %>% select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, INDUSTRY_CODE, INDUSTRY_NAME, value)
                            EST.IS_2$value[is.na(EST.IS_2$value)] <- 0
                            
                            INDUSTRY_AGGREGATE_2$Est.IS <- EST.IS_2 %>% 
                              dplyr::filter(PRODUCT_INDUSTRY_CODE != "NA" & INDUSTRY_CODE != "NA") %>%
                              dplyr::group_by(INDUSTRY_CODE, INDUSTRY_NAME) %>%
                              dplyr::summarise(Industry_Share = sum(value, na.rm = T))
                            
                            INDUSTRY_AGGREGATE_2$Est.IS <- INDUSTRY_AGGREGATE_2$Est.IS %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE_2$Supply_Dom <- INDUSTRY_AGGREGATE_2$Supply_Dom %>%
                              dplyr::arrange(INDUSTRY_CODE)
                            
                            INDUSTRY_AGGREGATE_2$Est.IS$Industry_Share <- INDUSTRY_AGGREGATE_2$Est.IS$Industry_Share/INDUSTRY_AGGREGATE_2$Supply_Dom$Total_output_by_industries_at_basic_prices
                            
                            INDUSTRY_AGGREGATE_2$Est.IS$Industry_Share[is.na(INDUSTRY_AGGREGATE_2$Est.IS$Industry_Share)] <- 0
                            
                            
                            
                          # 6.4 Est Rev ----
                            # 6.4.1 Main estimation ----------------------------------------------------
                            EST_REV <- USE_K_DOM_NETPURCH %>% 
                              merge.data.frame(INDUSTRY_AGGREGATE$Est.IS, key = "INDUSTRY_NAME") %>%
                              merge.data.frame(SIMULATION, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(value = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*Industry_Share*value) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Est_Rev <- EST_REV %>% 
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_Revenues_from_Intermediate_Inputs = sum(value, na.rm = T)) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE)
      
                            PRODUCT_INDUSTRY_AGGREGATE$Est_Rev <- PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch %>% 
                              merge.data.frame(SIMULATION, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(Final_Demand_HH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_households,
                                            Final_Demand_NPISH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_NPISH,
                                            Final_Demand_Government = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_government) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE$Est_Rev, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, Total_Revenues_from_Intermediate_Inputs, Final_Demand_HH, Final_Demand_NPISH, Final_Demand_Government) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_NAME)
                            
                            # Selection is for Constructions and construction works industry and number 62 should be replace by industry name 
                            PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_HH[PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"] <- 
                              PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$Final_consumption_expenditure_by_households[PRODUCT_INDUSTRY_AGGREGATE$Use_K_NetPurch$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"]*
                              (1-SIMULATION$Simulated_Policy_Exempt[62])*vat_rate_on_residential_construction
                            
                           
                            
                            
                            PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_Total = psum(PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Total_Revenues_from_Intermediate_Inputs, 
                                                                                         PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_HH, 
                                                                                         PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_NPISH, 
                                                                                         PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_Government, na.rm = T)  
                            
                            # Note that the variable "Final_Demand_HH" for industry "Constructions and construction works" is caclulated using different formula in the excel document.
                          
      
                            # 6.4.2 Estimation of TE part ---------------------------------------------------
                            USE_K_DOM_NETPURCH_1 = copy(USE_K_DOM_NETPURCH)
                            PRODUCT_INDUSTRY_AGGREGATE_1 = copy(PRODUCT_INDUSTRY_AGGREGATE)
                            
                            EST_REV_1 <- USE_K_DOM_NETPURCH_1 %>% 
                              merge.data.frame(INDUSTRY_AGGREGATE_1$Est.IS, key = "INDUSTRY_NAME") %>%
                              merge.data.frame(SIMULATION_1, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(value = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*Industry_Share*value) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                            
                            PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev <- EST_REV_1 %>% 
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_Revenues_from_Intermediate_Inputs = sum(value, na.rm = T)) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                            
                            PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev <- PRODUCT_INDUSTRY_AGGREGATE_1$Use_K_NetPurch %>% 
                              merge.data.frame(SIMULATION_1, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(Final_Demand_HH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_households,
                                            Final_Demand_NPISH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_NPISH,
                                            Final_Demand_Government = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_government) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, Total_Revenues_from_Intermediate_Inputs, Final_Demand_HH, Final_Demand_NPISH, Final_Demand_Government) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_NAME)
                            
                            # Selection is for Constructions and construction works industry and number 62 should be replace by industry name 
                            PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_HH[PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"] <- 
                              PRODUCT_INDUSTRY_AGGREGATE_1$Use_K_NetPurch$Final_consumption_expenditure_by_households[PRODUCT_INDUSTRY_AGGREGATE_1$Use_K_NetPurch$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"]*
                              (1-SIMULATION$Simulated_Policy_Exempt[62])*vat_rate_on_residential_construction
                            
                            PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_Total = psum(PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Total_Revenues_from_Intermediate_Inputs, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_HH, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_NPISH, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_Government, na.rm = T) 
                            
                            # 6.4.3 Estimation of effective VAT RATE ----------------------------------------

                            USE_K_DOM_NETPURCH_2 = copy(USE_K_DOM_NETPURCH)
                            PRODUCT_INDUSTRY_AGGREGATE_2 = copy(PRODUCT_INDUSTRY_AGGREGATE)
                            
                            EST_REV_2 <- USE_K_DOM_NETPURCH_2 %>% 
                              merge.data.frame(INDUSTRY_AGGREGATE_2$Est.IS, key = "INDUSTRY_NAME") %>%
                              merge.data.frame(SIMULATION_2, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(value = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*Industry_Share*value) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE, INDUSTRY_CODE)
                            
                            PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev <- EST_REV_2 %>% 
                              dplyr::group_by(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME) %>%
                              dplyr::summarise(Total_Revenues_from_Intermediate_Inputs = sum(value, na.rm = T)) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                            
                            PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev <- PRODUCT_INDUSTRY_AGGREGATE_2$Use_K_NetPurch %>% 
                              merge.data.frame(SIMULATION_2, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::mutate(Final_Demand_HH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_households,
                                            Final_Demand_NPISH = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_NPISH,
                                            Final_Demand_Government = (Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate+Simulated_Policy_Fully_Taxable*Standard_VAT_Rate)*
                                              Final_consumption_expenditure_by_government) %>%
                              merge.data.frame(PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev, key = "PRODUCT_INDUSTRY_NAME") %>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE, PRODUCT_INDUSTRY_NAME, Total_Revenues_from_Intermediate_Inputs, Final_Demand_HH, Final_Demand_NPISH, Final_Demand_Government) %>%
                              dplyr::arrange(PRODUCT_INDUSTRY_NAME)
                            
                            # Selection is for Constructions and construction works industry and number 62 should be replace by industry name 
                            PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_HH[PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"] <- 
                              PRODUCT_INDUSTRY_AGGREGATE_2$Use_K_NetPurch$Final_consumption_expenditure_by_households[PRODUCT_INDUSTRY_AGGREGATE_2$Use_K_NetPurch$PRODUCT_INDUSTRY_NAME == "Constructions and construction works"]*
                              (1-SIMULATION$Simulated_Policy_Exempt[62])*vat_rate_on_residential_construction
                            
                            PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_Total = psum(PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Total_Revenues_from_Intermediate_Inputs, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_HH, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_NPISH, 
                                                                                           PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_Government, na.rm = T) 
                           
                            
                   # 7. SIMULATION RESULTS ----  
                            # 7.1.1 Main estimation --------------------------------------------------
    
                        Results <- as.list(c("VAT_Gap", "Simulation"))
                        names(Results) <- c("VAT_Gap", "Simulation")
                        
                        
                        Results$VAT_Gap <- as.data.frame(sum(PRODUCT_INDUSTRY_AGGREGATE$BM_Rev$Final_Demand_Total))
                        colnames(Results$VAT_Gap) <- "Benchmark_VAT_M_of_denars"
                        
                        Results$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_Total, na.rm = T)
                       
                        
                        
                        Results$VAT_Gap$Calibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE$Est_Rev$Final_Demand_Total, na.rm = T)*Locked_Calibration_Factor
                        
                        Results$VAT_Gap$VAT_Control_Total.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Total_use_at_basic_prices, na.rm = T) - sum(PRODUCT_INDUSTRY_AGGREGATE$Use_VAT$Exports_FOB, na.rm = T)
                        
                        Results$VAT_Gap$Total_VAT_Gap.M_of_denars <- Results$VAT_Gap$Benchmark_VAT_M_of_denars - Results$VAT_Gap$VAT_Control_Total.M_of_denars
                        Results$VAT_Gap$Total_VAT_Gap.Prc <- Results$VAT_Gap$Total_VAT_Gap.M_of_denars/Results$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Manual input 
                        
                        Results$VAT_Gap$Policy_Gap.M_of_denars <- 14803  # <------- Manual input in simulation
                          
                      
                        
                        Results$VAT_Gap$Policy_Gap.Prc <- Results$VAT_Gap$Policy_Gap.M_of_denars/Results$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        Results$VAT_Gap$Compliance_Gap.M_of_denars <- Results$VAT_Gap$Total_VAT_Gap.M_of_denars-Results$VAT_Gap$Policy_Gap.M_of_denars
                        
                        Results$VAT_Gap$Compliance_Gap.Prc <- Results$VAT_Gap$Compliance_Gap.M_of_denars/Results$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Promena ovde !!!
                        Results$VAT_Gap$Calibration_Factor <- 0.755207774941413
    
                          
                       #Results$VAT_Gap$VAT_Control_Total.M_of_denars/Results$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars
                        
                        # Final output - Change in Revenues
                        
                        #Results$Simulation <- as.data.frame(Results$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results$VAT_Gap$VAT_Control_Total.M_of_denars)
                        Results$Simulation <- as.data.frame(as.integer(Results$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results$VAT_Gap$VAT_Control_Total.M_of_denars))
                        colnames(Results$Simulation) <- "Simulated_Change_in_Revenues.M_of_denars"
                        
                        Results$Simulation$Simulated_Change_in_Revenues.Prc <- (Results$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results$VAT_Gap$VAT_Control_Total.M_of_denars)*100
                        #Results$Simulation$Simulated_Change_in_Revenues.Prc <- round(Results$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results$VAT_Gap$VAT_Control_Total.M_of_denars,1)*100
    
                        
                        #View(SIMULATION)
                        View(Results)
        
    
                            # 7.1.2 Estimation of TE part ---------------------------------------------------

                        Results_1 <- as.list(c("VAT_Gap", "Simulation"))
                        names(Results_1) <- c("VAT_Gap", "Simulation")
                        
                        
                        Results_1$VAT_Gap <- as.data.frame(sum(PRODUCT_INDUSTRY_AGGREGATE_1$BM_Rev$Final_Demand_Total))
                        colnames(Results_1$VAT_Gap) <- "Benchmark_VAT_M_of_denars"
                        
                        Results_1$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_Total, na.rm = T)
                        
                        
                        
                        Results_1$VAT_Gap$Calibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev$Final_Demand_Total, na.rm = T)*Locked_Calibration_Factor
                        
                        Results_1$VAT_Gap$VAT_Control_Total.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_1$Use_VAT$Total_use_at_basic_prices, na.rm = T) - sum(PRODUCT_INDUSTRY_AGGREGATE_1$Use_VAT$Exports_FOB, na.rm = T)
                        
                        Results_1$VAT_Gap$Total_VAT_Gap.M_of_denars <- Results_1$VAT_Gap$Benchmark_VAT_M_of_denars - Results_1$VAT_Gap$VAT_Control_Total.M_of_denars
                        Results_1$VAT_Gap$Total_VAT_Gap.Prc <- Results_1$VAT_Gap$Total_VAT_Gap.M_of_denars/Results_1$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Manual input 
                        
                        Results_1$VAT_Gap$Policy_Gap.M_of_denars <- 14803  # <------- Manual input in simulation
                       
                        Results_1$VAT_Gap$Policy_Gap.Prc <- Results_1$VAT_Gap$Policy_Gap.M_of_denars/Results_1$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        Results_1$VAT_Gap$Compliance_Gap.M_of_denars <- Results_1$VAT_Gap$Total_VAT_Gap.M_of_denars-Results_1$VAT_Gap$Policy_Gap.M_of_denars
                        
                        Results_1$VAT_Gap$Compliance_Gap.Prc <- Results_1$VAT_Gap$Compliance_Gap.M_of_denars/Results_1$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Promena ovde !!!
                        Results_1$VAT_Gap$Calibration_Factor <- 0.755207774941413
                        
                        
                        #Results_1$VAT_Gap$VAT_Control_Total.M_of_denars/Results_1$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars
                        
                        # Final output - Change in Revenues
                        
                        #Results_1$Simulation <- as.data.frame(Results_1$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results_1$VAT_Gap$VAT_Control_Total.M_of_denars)
                        Results_1$Simulation <- as.data.frame(as.integer(Results_1$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results_1$VAT_Gap$VAT_Control_Total.M_of_denars))
                        colnames(Results_1$Simulation) <- "Simulated_Change_in_Revenues.M_of_denars"
                        
                        Results_1$Simulation$Simulated_Change_in_Revenues.Prc <- (Results_1$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results_1$VAT_Gap$VAT_Control_Total.M_of_denars)*100
                        #Results_1$Simulation$Simulated_Change_in_Revenues.Prc <- round(Results_1$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results_1$VAT_Gap$VAT_Control_Total.M_of_denars,1)*100
                        
                        
                        #View(SIMULATION_1)
                        View(Results_1)
                    
                        
                        
                        
                        
                        
                            # 7.1.3 Estimation of effective VAT RATE------------------------------

                        Results_2 <- as.list(c("VAT_Gap", "Simulation"))
                        names(Results_2) <- c("VAT_Gap", "Simulation")
                        
                        
                        Results_2$VAT_Gap <- as.data.frame(sum(PRODUCT_INDUSTRY_AGGREGATE_2$BM_Rev$Final_Demand_Total))
                        colnames(Results_2$VAT_Gap) <- "Benchmark_VAT_M_of_denars"
                        
                        Results_2$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_Total, na.rm = T)
                        
                        
                        
                        Results_2$VAT_Gap$Calibrated_VAT_Est.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev$Final_Demand_Total, na.rm = T)*Locked_Calibration_Factor
                        
                        Results_2$VAT_Gap$VAT_Control_Total.M_of_denars <- sum(PRODUCT_INDUSTRY_AGGREGATE_2$Use_VAT$Total_use_at_basic_prices, na.rm = T) - sum(PRODUCT_INDUSTRY_AGGREGATE_2$Use_VAT$Exports_FOB, na.rm = T)
                        
                        Results_2$VAT_Gap$Total_VAT_Gap.M_of_denars <- Results_2$VAT_Gap$Benchmark_VAT_M_of_denars - Results_2$VAT_Gap$VAT_Control_Total.M_of_denars
                        Results_2$VAT_Gap$Total_VAT_Gap.Prc <- Results_2$VAT_Gap$Total_VAT_Gap.M_of_denars/Results_2$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Manual input 
                        
                        Results_2$VAT_Gap$Policy_Gap.M_of_denars <- 14803  # <------- Manual input in simulation
                        
                        Results_2$VAT_Gap$Policy_Gap.Prc <- Results_2$VAT_Gap$Policy_Gap.M_of_denars/Results_2$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        Results_2$VAT_Gap$Compliance_Gap.M_of_denars <- Results_2$VAT_Gap$Total_VAT_Gap.M_of_denars-Results_2$VAT_Gap$Policy_Gap.M_of_denars
                        
                        Results_2$VAT_Gap$Compliance_Gap.Prc <- Results_2$VAT_Gap$Compliance_Gap.M_of_denars/Results_2$VAT_Gap$VAT_Control_Total.M_of_denars
                        
                        # Promena ovde !!!
                        Results_2$VAT_Gap$Calibration_Factor <- 0.755207774941413
                        
                        
                        #Results_2$VAT_Gap$VAT_Control_Total.M_of_denars/Results_2$VAT_Gap$Uncalibrated_VAT_Est.M_of_denars
                        
                        # Final output - Change in Revenues
                        
                        #Results_2$Simulation <- as.data.frame(Results_2$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results_2$VAT_Gap$VAT_Control_Total.M_of_denars)
                        Results_2$Simulation <- as.data.frame(as.integer(Results_2$VAT_Gap$Calibrated_VAT_Est.M_of_denars-Results_2$VAT_Gap$VAT_Control_Total.M_of_denars))
                        colnames(Results_2$Simulation) <- "Simulated_Change_in_Revenues.M_of_denars"
                        
                        Results_2$Simulation$Simulated_Change_in_Revenues.Prc <- (Results_2$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results_2$VAT_Gap$VAT_Control_Total.M_of_denars)*100
                        #Results_2$Simulation$Simulated_Change_in_Revenues.Prc <- round(Results_2$Simulation$Simulated_Change_in_Revenues.M_of_denars/Results_2$VAT_Gap$VAT_Control_Total.M_of_denars,1)*100
                        
                        
                        #View(SIMULATION_2)
                        #View(Results_2)                        
                        
                        
                        
                            # 7.1.4 Other files -------------------------------------------------------
                        # 9.1 Result from main estimation
                        Export_Main_Results<- Results$VAT_Gap 
                        Simulation_Results<-Results$Simulation
                        
                        
                        Revenue_VAT_TOTAL<-PRODUCT_INDUSTRY_AGGREGATE$Est_Rev%>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE,Total_Revenues_from_Intermediate_Inputs,Final_Demand_HH,Final_Demand_NPISH,Final_Demand_Government,Final_Demand_Total)
                        
                        # Without text column
                        Revenue_VAT_TOTAL[2:6]<-Revenue_VAT_TOTAL[2:6]*Locked_Calibration_Factor
                        
                        # 9.2  Result from tax expenditures estimation
                        # Result 1
                        
                        Simulation_Results_1<-Results_1$Simulation
                        Est_Rev1<-PRODUCT_INDUSTRY_AGGREGATE_1$Est_Rev
                        
                       
                  # 8. ESTIMATION OF EFFECTIVE VAT RATE BY SECTORS -------------------------------------
                          # 8.1 Business as usual-Total effective rate for : Industries,HH,NPISH and GOVERMENT  ----------------------------
                              
                              TAX_BASE_TOTAL<-PRODUCT_INDUSTRY_AGGREGATE_2$Est_Rev%>%
                                dplyr::select(PRODUCT_INDUSTRY_CODE,Final_Demand_Total,Total_Revenues_from_Intermediate_Inputs,Final_Demand_HH,Final_Demand_NPISH,Final_Demand_Government)%>%
                                dplyr::mutate(
                                              tax_base_INDUSTRIES=Total_Revenues_from_Intermediate_Inputs/standard_VAT_rate,
                                              tax_base_HH=Final_Demand_HH/standard_VAT_rate,
                                              tax_base_NPISH=Final_Demand_NPISH/standard_VAT_rate,
                                              tax_base_GOVERMENT=Final_Demand_Government/standard_VAT_rate,
                                              tax_base_TOTAL=Final_Demand_Total/standard_VAT_rate)%>%
                              dplyr::select(PRODUCT_INDUSTRY_CODE,tax_base_INDUSTRIES,tax_base_HH,tax_base_NPISH,tax_base_GOVERMENT,tax_base_TOTAL)
                                      
                        
                              EFFECTIVE_VAT_RATES<-left_join(TAX_BASE_TOTAL,SIMULATION_2,by = c("PRODUCT_INDUSTRY_CODE"))%>%
                                dplyr::select(PRODUCT_INDUSTRY_CODE,Standard_VAT_Rate,Preferential_VAT_Rate,tax_base_INDUSTRIES,
                                              tax_base_HH,tax_base_NPISH,tax_base_GOVERMENT,tax_base_TOTAL,Current_Policy_Reduced_Rate,Current_Policy_Fully_Taxable)%>%
                                dplyr::mutate(
                                          # VAT FROM PREFERENTIAL VAT RATES
                                              VAT_PREFERENTIAL_R_INDUSTRIES=tax_base_INDUSTRIES*Current_Policy_Reduced_Rate*Preferential_VAT_Rate,
                                              VAT_PREFERENTIAL_R_HH=tax_base_HH*Current_Policy_Reduced_Rate*Preferential_VAT_Rate,
                                              VAT_PREFERENTIAL_R_NPISH=tax_base_NPISH*Current_Policy_Reduced_Rate*Preferential_VAT_Rate,
                                              VAT_PREFERENTIAL_R_GOVERMENT=tax_base_GOVERMENT*Current_Policy_Reduced_Rate*Preferential_VAT_Rate,
                                              VAT_PREFERENTIAL_R_TOTAL=tax_base_TOTAL*Current_Policy_Reduced_Rate*Preferential_VAT_Rate,
                                          # VAT FROM STANDARD RATES
                                              VAT_STANDARD_R_INDUSTRIES=tax_base_INDUSTRIES*Current_Policy_Fully_Taxable*Standard_VAT_Rate,
                                              VAT_STANDARD_R_HH=tax_base_HH*Current_Policy_Fully_Taxable*Standard_VAT_Rate,
                                              VAT_STANDARD_R_NPISH=tax_base_NPISH*Current_Policy_Fully_Taxable*Standard_VAT_Rate,
                                              VAT_STANDARD_R_GOVERMENT=tax_base_GOVERMENT*Current_Policy_Fully_Taxable*Standard_VAT_Rate,
                                              VAT_STANDARD_R_TOTAL=tax_base_TOTAL*Current_Policy_Fully_Taxable*Standard_VAT_Rate,
                                          # SUM VAT REVENUES FROM PREFERENTIAL PLUS VAT FROM STANDARD RATE 
                                              VAT_R_INDUSTRIES= VAT_PREFERENTIAL_R_INDUSTRIES+VAT_STANDARD_R_INDUSTRIES,
                                              VAT_R_HH=VAT_PREFERENTIAL_R_HH+VAT_STANDARD_R_HH,
                                              VAT_R_NPISH=VAT_PREFERENTIAL_R_NPISH+VAT_STANDARD_R_NPISH,
                                              VAT_R_GOVERMENT=VAT_PREFERENTIAL_R_GOVERMENT+VAT_STANDARD_R_GOVERMENT,
                                              VAT_TOTAL_R_TOTAL=VAT_PREFERENTIAL_R_TOTAL+VAT_STANDARD_R_TOTAL,
                                          #  Effective VAT rate by NACE DIVISION
                                              EFFECTIVE_VAT_RATE_INDUSTRIES=VAT_R_INDUSTRIES/tax_base_INDUSTRIES,
                                              EFFECTIVE_VAT_RATE_HH= VAT_R_HH/tax_base_HH,
                                              EFFECTIVE_VAT_RATE_NPISH=VAT_R_NPISH/tax_base_NPISH,
                                              EFFECTIVE_VAT_RATE_GOVERMENT=VAT_R_GOVERMENT/tax_base_GOVERMENT,
                                              EFFECTIVE_VAT_RATE_TOTAL=VAT_TOTAL_R_TOTAL/tax_base_TOTAL)%>%
                               # dplyr::select(PRODUCT_INDUSTRY_CODE,EFFECTIVE_VAT_RATE_INDUSTRIES,EFFECTIVE_VAT_RATE_HH,EFFECTIVE_VAT_RATE_NPISH,EFFECTIVE_VAT_RATE_GOVERMENT,EFFECTIVE_VAT_RATE_TOTAL)%>%
                                dplyr::arrange(PRODUCT_INDUSTRY_CODE)
                                
                              EFFECTIVE_VAT_RATES[is.na(EFFECTIVE_VAT_RATES)] <- 0
                              
                              
                              EFFECTIVE_VAT_RATES_HH<-EFFECTIVE_VAT_RATES%>%
                                dplyr::select(PRODUCT_INDUSTRY_CODE,EFFECTIVE_VAT_RATE_HH)
                              
                              
                              # 
                              # df<-EFFECTIVE_VAT_RATES%>%
                              #   dplyr::select(PRODUCT_INDUSTRY_CODE,Standard_VAT_Rate )
                              #   
                              # 9.3  Result from of effective VAT RATE
                              
                              effective_vat_rates<-EFFECTIVE_VAT_RATES
                              
                              
                #View(EFFECTIVE_VAT_RATES_BU)
                
                          # 8.2 Simulation -Total effective rate for : Industries,HH,NPISH and GOVERMENT -----------------------------------------
                
                
                
                
                  # 9. HSB Analysis ------------------------------------------------------------
                    # 3.5 Applying effectve VAT rates with HBS (data4_hbs2016_test)
                    
                    # Ova dole da odi
                    
                    #  Suffix _BR mean before revenues or or in other words denotes revenue before the reform
                    #  Suffix _R mean revenues after or in other words denotes revenue before the reform
                    
                        
                        
                        Revenue_VAT_TOTAL_HH<-Revenue_VAT_TOTAL%>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE,Final_Demand_HH)
                        
                        str(CPA_COICOP_CONCORDANCE)
                        
                        
                       # Revenue_VAT_TOTAL_HH_CONCORDANCE<-left_join(Revenue_VAT_TOTAL_HH,CPA_COICOP_CONCORDANCE,by = c("PRODUCT_INDUSTRY_CODE"="CPA_COICOP"))
                        
                       
                        
                        VAT_COICOP_PROPORTIONS<-VAT_COICOP_FINAL_RAW %>%
                          dplyr::select(Two_digits,FC,EX,Reduced_Rate_5,Standard_Rate_18) %>%
                          dplyr::group_by(Two_digits) %>%
                          dplyr::summarise(FC = sum(FC, na.rm = T),
                                           VAT_BASE_COICOP_EX= sum(EX, na.rm = T),
                                           VAT_BASE_COICOP_5 = sum(Reduced_Rate_5, na.rm = T),
                                           VAT_BASE_COICOP_18 = sum(Standard_Rate_18, na.rm = T)
                                           ) %>%
                          dplyr::mutate(VAT_BASE_COICOP_5_18=VAT_BASE_COICOP_5+VAT_BASE_COICOP_18)
                          
                        VAT_COICOP_PROPORTIONS<-left_join(VAT_COICOP_PROPORTIONS,CPA_COICOP_CONCORDANCE,by = c("Two_digits"="COICOP_Division"))
                        
                        # # Concordance
                        # VAT_COICOP_PROPORTIONS_CPA<-left_join(VAT_COICOP_PROPORTIONS,CPA_COICOP_CONCORDANCE,by = c("Two_digits"="COICOP_Division"))%>%
                        #   dplyr::select(Two_digits,VAT_BASE_COICOP_5_18,CPA_COICOP)%>%
                        #   dplyr::group_by(Two_digits) %>%
                        #   dplyr::mutate(PCT = VAT_BASE_COICOP_5_18/sum(VAT_BASE_COICOP_5_18)) %>% 
                        #   ungroup
                        # # EFFECTIVE BASE RATE BY CPA
                        
                        EFFECTIVE_VAT_RATES_HH_BASE<-EFFECTIVE_VAT_RATES%>%
                          dplyr::select(PRODUCT_INDUSTRY_CODE,tax_base_HH,EFFECTIVE_VAT_RATE_HH)
                        
                        
                        
                        # Concordance
                        VAT_COICOP_PROPORTIONS_CPA<-left_join(VAT_COICOP_PROPORTIONS,EFFECTIVE_VAT_RATES_HH_BASE,by = c("CPA_COICOP"="PRODUCT_INDUSTRY_CODE"))%>%
                          dplyr::select(CPA_COICOP,Two_digits,tax_base_HH,VAT_BASE_COICOP_5_18,EFFECTIVE_VAT_RATE_HH)%>%
                          dplyr::group_by(CPA_COICOP) %>%
                          dplyr::mutate(PCT = VAT_BASE_COICOP_5_18/sum(VAT_BASE_COICOP_5_18))%>% 
                          ungroup
                        
                        
                        # Test. Works well !!
                        VAT_COICOP_PROPORTIONS_CPA%>%
                          filter(CPA_COICOP=='01')
                        
                        
                        #View(VAT_COICOP_PROPORTIONS_CPA)
                        
                        
                        # Sum of VAT for household 49334.2
                        
                        Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL<-VAT_COICOP_PROPORTIONS_CPA%>%
                          dplyr::mutate(ARTEFICIAL_BASE_HH=tax_base_HH*PCT)%>%
                          dplyr::mutate(VAT_ESTIMATED=ARTEFICIAL_BASE_HH*EFFECTIVE_VAT_RATE_HH)%>%
                          dplyr::group_by(Two_digits)%>%
                          dplyr::summarise(ARTEFICIAL_BASE_HH = sum(ARTEFICIAL_BASE_HH, na.rm = T),VAT_ESTIMATED = sum(VAT_ESTIMATED, na.rm = T),EFFECTIVE_VAT_RATE_HH=mean(EFFECTIVE_VAT_RATE_HH, na.rm = T))
                         
                            
                            
                        # # Test. Works well !!
                        # Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL%>%
                        #   filter(CPA_COICOP=='01')
                        # 
                        # #Revenue_VAT_TOTAL_HH_CONCORDANCE<-left_join(VAT_COICOP_PROPORTIONS,EFFECTIVE_VAT_RATES_HH,by = c("PRODUCT_INDUSTRY_CODE"="PRODUCT_INDUSTRY_CODE"))
                        # 
                        # sum(Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL$VAT_ESTIMATED)
                        # 
                        # # write.xlsx(as.data.frame(Revenue_VAT_TOTAL_HH_CONCORDANCE), file="TEST_data.xlsx", sheetName="HH", row.names=FALSE)
                        # # write.xlsx(as.data.frame(EFFECTIVE_VAT_RATES_HH_BASE), file="TEST_data.xlsx", sheetName="HBS", row.names=FALSE,append=TRUE)
                        # # write.xlsx(as.data.frame(VAT_COICOP_PROPORTIONS_CPA), file="TEST_data.xlsx", sheetName="NEW", row.names=FALSE,append=TRUE)
                        # 
                        # 
                        
                        # Do ovde !!! 
                        # Da se prodolzi taka sto na vaka sobranite bazi ke se primeni efektivnata stapka koja e veke presmetana 
                        # vo pogornata tabla EFFECTIVE_VAT_RATES
                        
                        
                        
                        
                        # VAT_COICOP_PROPORTIONS<-VAT_COICOP_FINAL_RAW %>%
                        #   dplyr::select(Two_digits,FC,EX,Reduced_Rate_5,Standard_Rate_18) %>%
                        #   dplyr::group_by(Two_digits) %>%
                        #   dplyr::summarise(FC = sum(FC, na.rm = T),
                        #                    VAT_BASE_COICOP_EX= sum(EX, na.rm = T),
                        #                    VAT_BASE_COICOP__5 = sum(Reduced_Rate_5, na.rm = T),
                        #                    VAT_BASE_COICOP_18 = sum(Standard_Rate_18, na.rm = T)
                        #   )
                        
                        
                        data4_hbs2016_long_merged<-left_join(data4_hbs2016_long,Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL,by = c("COICOP_section"="Two_digits"))%>%
                        dplyr::select(-c(ARTEFICIAL_BASE_HH,VAT_ESTIMATED))%>%
                        dplyr::mutate(VAT_BASE_HH=Expenditures/(1+EFFECTIVE_VAT_RATE_HH),
                                      VAT_REVENUES_HH=VAT_BASE_HH*EFFECTIVE_VAT_RATE_HH)
                                      
                        
                        # # Wider 
                        # data4_hbs2016_wider_merged<-data4_hbs2016_long_merged%>%
                        # #pivot_wider(names_from = COICOP_section , values_from = Expenditures ,values_fill = 0)
                        #   pivot_wider(
                        #     names_from = COICOP_section,
                        #     values_from = c(Expenditures, moe)
                        #       )
                        
                        
                        
                        
    # Merging with others databases
                        
                       
                        #View(data3_hbs2016)
                        
                        
                        data3_hbs2016<-data3_hbs2016%>%
                          dplyr:: rename(c(
                                          "number_hh"="RBR"))
                                      
                        
                        #Available_asset_total (only column V09030)
                        AVAILABLE_ASSET<-select(data3_hbs2016,number_hh,V09030)
                        
                        colnames(AVAILABLE_ASSET)<-c("number_hh", 
                                                      "AVAILABLE_ASSET_BEFORE")
                        
                        
                  # 4.1 Determination of threshold of decile and centiles groups, by used assets
                        deciles_net <- quantile(AVAILABLE_ASSET$AVAILABLE_ASSET_BEFORE, seq(1, 10) / 10)
                        centile_net<-quantile(AVAILABLE_ASSET$AVAILABLE_ASSET_BEFORE, seq(1, 100) / 100)
                        
                        
                    # 4.2 Importing deciles and centiles into FINAL_UNWEIGHTED_SAMPLE
                        FINAL_UNWEIGHTED_SAMPLE<-mutate(AVAILABLE_ASSET,
                                                        #DETERMINE THRESHOLD
                                                        DECILE_THRESHOLD=findInterval(AVAILABLE_ASSET_BEFORE, c(-Inf, deciles_net), rightmost.closed = TRUE),
                                                        CENTILE_THRESHOLD=findInterval(AVAILABLE_ASSET_BEFORE, c(-Inf, centile_net), rightmost.closed = TRUE),
                                                        DECILE_COUNT =1,
                                                        CENTILE_COUNT =1
                                                          )
                        #View(FINAL_UNWEIGHTED_SAMPLE)
                        rm(centile_net,deciles_net)
                        
                        
      #  Merging with other base
                       
                data4_hbs2016_long_merged_deciles<-left_join(data4_hbs2016_long_merged,FINAL_UNWEIGHTED_SAMPLE,by = c("number_hh"="number_hh"))%>%
                dplyr::select(number_hh,COICOP_section,VAT_REVENUES_HH,DECILE_THRESHOLD,CENTILE_THRESHOLD)
                          
                data4_hbs2016_wider_merged_deciles<-data4_hbs2016_long_merged_deciles%>%    
                pivot_wider(
                  names_from = COICOP_section,
                  values_from = c(VAT_REVENUES_HH)
                            )%>%
                  dplyr::mutate(VAT_TOTAL=`01`+`02`+`03`+`04`+`05`+`06`+`07`+`08`+`09`+`10`+`11`+`12`)
                        
                        
                 # View(data4_hbs2016_wider_merged_deciles)
                        
                  
                  
                        # 
                        # # Final sum of of TOTAL_UNWEIGHTED_SAMPLE in millions denars
                        # TOTAL_UNWEIGHTED_SAMPLE<-data.frame(
                        #   Total_used_assets=round((sum(FINAL_UNWEIGHTED_SAMPLE$USED_ASSETS_BEFORE))/1000000),
                        #   Total_used_assets1=round((sum(FINAL_UNWEIGHTED_SAMPLE$USED_ASSETS_AFTER))/1000000),
                        #   Total_VAT=round((sum(FINAL_UNWEIGHTED_SAMPLE$VAT_REVENUE_BEFORE))/1000000),
                        #   Total_VAT1=round((sum(FINAL_UNWEIGHTED_SAMPLE$VAT_REVENUE_AFTER))/1000000),
                        #   GINI_USED_ASSETS=round(ineq(FINAL_UNWEIGHTED_SAMPLE$USED_ASSETS_BEFORE,type="Gini",na.rm = TRUE),4),
                        #   GINI_USED_ASSETS1=round(ineq(FINAL_UNWEIGHTED_SAMPLE$USED_ASSETS_AFTER,type="Gini",na.rm = TRUE),4),
                        #   GINI_AVAILABLE_ASSET1=round(ineq(FINAL_UNWEIGHTED_SAMPLE$AVAILABLE_ASSET_BEFORE,type="Gini",na.rm = TRUE),4),
                        #   GINI_AVAILABLE_ASSET2=round(ineq(FINAL_UNWEIGHTED_SAMPLE$AVAILABLE_ASSET_AFTER,type="Gini",na.rm = TRUE),4))
                        # #View(TOTAL_UNWEIGHTED_SAMPLE)
                        # 
                        # # (b)  Weighted_sample
                        # 
                        # #4.2 Estimate deciles groups for ploting
                        # #VAT_BASE_HBS_2016_3= WEIGHTED_SAMPLE OVAA ZAMENA E NAPRAVENA
                        # #WEIGHTING
                        # 
                        # # Merging database
                        # WEIGHTED_SAMPLE<-inner_join(VAT_BASE_HBS_2016_2,Weight_hbs2016,by = c("number_hh"))
                        # WEIGHTED_SAMPLE<-WEIGHTED_SAMPLE[,-52:-53]
                        # 
                        # # Rounding weights
                        # WEIGHTED_SAMPLE$weight<-round(WEIGHTED_SAMPLE$weight,0)
                        # 
                        # #Expanding database according weights
                        # WEIGHTED_SAMPLE1<-WEIGHTED_SAMPLE[rep(row.names(WEIGHTED_SAMPLE), WEIGHTED_SAMPLE$weight), 1:53]
                        # 
                        # 
                        # # Final_weighted_sample in accordance with expenditures (not by income)
                        # deciles_net <- quantile(WEIGHTED_SAMPLE1$USED_ASSETS_BEFORE, seq(1, 10) / 10)
                        # centile_net<-quantile(WEIGHTED_SAMPLE1$USED_ASSETS_BEFORE, seq(1, 100) / 100)
                        # FINAL_WEIGHTED_SAMPLE<-mutate(WEIGHTED_SAMPLE1,
                        #                               #DETERMINE THRESHOLD
                        #                               DECILE_THRESHOLD=findInterval(USED_ASSETS_BEFORE, c(-Inf, deciles_net), rightmost.closed = TRUE),
                        #                               CENTILE_THRESHOLD=findInterval(USED_ASSETS_BEFORE, c(-Inf, centile_net), rightmost.closed = TRUE),
                        #                               DECILE_COUNT =1,
                        #                               CENTILE_COUNT =1)
                        # rm(centile_net,deciles_net)
                        # 
                        # 
                        # #  Total weighted table (in millions denars)
                        # TOTAL_FINAL_WEIGHTED_SAMPLE<-data.frame(
                        #   Total_used_assets=round((sum(FINAL_WEIGHTED_SAMPLE$USED_ASSETS_BEFORE))/1000000),
                        #   Total_used_assets1=round((sum(FINAL_WEIGHTED_SAMPLE$USED_ASSETS_AFTER))/1000000),
                        #   Total_VAT=round((sum(FINAL_WEIGHTED_SAMPLE$VAT_REVENUE_BEFORE))/1000000),
                        #   Total_VAT1=round((sum(FINAL_WEIGHTED_SAMPLE$VAT_REVENUE_AFTER))/1000000),
                        #   GINI_USED_ASSETS=round(ineq(FINAL_WEIGHTED_SAMPLE$USED_ASSETS_BEFORE,type="Gini",na.rm = TRUE),4),
                        #   GINI_USED_ASSETS1=round(ineq(FINAL_WEIGHTED_SAMPLE$USED_ASSETS_AFTER,type="Gini",na.rm = TRUE),4),
                        #   GINI_AVAILABLE_ASSET1=round(ineq(FINAL_WEIGHTED_SAMPLE$AVAILABLE_ASSET_BEFORE,type="Gini",na.rm = TRUE),4),
                        #   GINI_AVAILABLE_ASSET2=round(ineq(FINAL_WEIGHTED_SAMPLE$AVAILABLE_ASSET_AFTER,type="Gini",na.rm = TRUE),4))
                        # #View(TOTAL_FINAL_WEIGHTED_SAMPLE)
                        # #str(DECILE_FINAL)
                        # 
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
              
                    
                    
               
                    
                    
                    
                    # rm(list=ls()[! ls() %in% c("data1_hbs2016","data2_hbs2016","data3_hbs2016","data4_hbs2016","Weight_hbs2016","path_2",
                    #                           "path_1","SIMULATION","Results")])
                  # 10. EXPORT RESULTS IN EXCEL -----------------------------------------------
                  
                  library(xlsx)
                  # Export data for business as usual. Suffix for business as usual is 'bu'. Results are estimated without any changes in VAT Rates.
                  # For this data set this estimation is only need to done one time and after that this result can be compared as benchmark
                  #write.xlsx(as.data.frame(Revenue_VAT_TOTAL), file="export_data_bu.xlsx", sheetName="Revenue_VAT_TOTAL_BA", append=TRUE, row.names=FALSE)
                  # write.xlsx(as.data.frame(Simulation_Results_1), file="export_data_bu.xlsx", sheetName="Results_1_bu",append=TRUE, row.names=FALSE)
                  # write.xlsx(as.data.frame(Est_Rev1), file="export_data_bu.xlsx", sheetName="Est_Rev1_bu",append=TRUE, row.names=FALSE)
                  # write.xlsx(as.data.frame(effective_vat_rates_bu), file="export_data_bu.xlsx", sheetName="effective_vat_rates_bu",append=TRUE, row.names=FALSE)
                  # write.xlsx(as.data.frame(data4_hbs2016_wider_merged_deciles), file="export_data_bu.xlsx", sheetName="hbs_bu",append=TRUE, row.names=FALSE)
                  
                  #Unweight sample
                  write.xlsx(as.data.frame(Export_Main_Results), file="export_data.xlsx", sheetName="Main_Results", row.names=FALSE)
                  
                  write.xlsx(as.data.frame(Revenue_VAT_TOTAL), file="export_data.xlsx", sheetName="Revenue_VAT_TOTAL", append=TRUE, row.names=FALSE)
                  write.xlsx(as.data.frame(Simulation_Results), file="export_data.xlsx", sheetName="Result_Simulation",append=TRUE, row.names=FALSE)
                  
                  write.xlsx(as.data.frame(Simulation_Results_1), file="export_data.xlsx", sheetName="Results_1",append=TRUE, row.names=FALSE)
                  write.xlsx(as.data.frame(Est_Rev1), file="export_data.xlsx", sheetName="Est_Rev1",append=TRUE, row.names=FALSE)
                  write.xlsx(as.data.frame(effective_vat_rates), file="export_data.xlsx", sheetName="effective_vat_rates",append=TRUE, row.names=FALSE)
                  write.xlsx(as.data.frame(data4_hbs2016_wider_merged_deciles), file="export_data.xlsx", sheetName="hbs",append=TRUE, row.names=FALSE)
                  
                  