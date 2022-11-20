'
    ESTIMATION OF EFFECTIVE VAT RATE BY SECTORS AND COICOP
'
setwd(path)
getwd()
            # 1. ESTIMATION OF EFFECTIVE VAT RATE BY SECTORS -------------------------------------
            # 1.1 Effective rate for : Industries,HH,NPISH and GOVERMENT First approach ----------------------------
            
            
            #TAX_BASE_TOTAL<-CPA_PRODUCTS_3$Est_Rev%>%
            TAX_BASE_TOTAL<-CPA_PRODUCTS$Est_Rev%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,Final_Demand_Total,Total_Revenues_from_Intermediate_Inputs,Final_Demand_HH,Final_Demand_NPISH,Final_Demand_Government)%>%
              dplyr::mutate(
                tax_base_INDUSTRIES=Total_Revenues_from_Intermediate_Inputs/standard_VAT_rate,
                tax_base_HH=Final_Demand_HH/standard_VAT_rate,
                tax_base_NPISH=Final_Demand_NPISH/standard_VAT_rate,
                tax_base_GOVERMENT=Final_Demand_Government/standard_VAT_rate,
                tax_base_TOTAL=Final_Demand_Total/standard_VAT_rate)%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,tax_base_INDUSTRIES,tax_base_HH,tax_base_NPISH,tax_base_GOVERMENT,tax_base_TOTAL)
            
            
            
            # EFFECTIVE_VAT_RATES<-left_join(TAX_BASE_TOTAL,SIMULATION_3,by = c("PRODUCT_INDUSTRY_CODE"))%>%
            EFFECTIVE_VAT_RATES<-left_join(TAX_BASE_TOTAL,SIMULATION,by = c("PRODUCT_INDUSTRY_CODE"))%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,Standard_VAT_Rate,Preferential_VAT_Rate,tax_base_INDUSTRIES,
                            tax_base_HH,tax_base_NPISH,tax_base_GOVERMENT,tax_base_TOTAL,Current_Policy_Reduced_Rate,Current_Policy_Fully_Taxable,
                            Simulated_Policy_Reduced_Rate,Simulated_Policy_Fully_Taxable
              )%>%
              dplyr::mutate(
                # VAT FROM PREFERENTIAL VAT RATES
                VAT_PREFERENTIAL_R_INDUSTRIES=tax_base_INDUSTRIES*Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate,
                VAT_PREFERENTIAL_R_HH=tax_base_HH*Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate,
                VAT_PREFERENTIAL_R_NPISH=tax_base_NPISH*Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate,
                VAT_PREFERENTIAL_R_GOVERMENT=tax_base_GOVERMENT*Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate,
                VAT_PREFERENTIAL_R_TOTAL=tax_base_TOTAL*Simulated_Policy_Reduced_Rate*Preferential_VAT_Rate,
                # VAT FROM STANDARD RATES
                VAT_STANDARD_R_INDUSTRIES=tax_base_INDUSTRIES*Simulated_Policy_Fully_Taxable*Standard_VAT_Rate,
                VAT_STANDARD_R_HH=tax_base_HH*Simulated_Policy_Fully_Taxable*Standard_VAT_Rate,
                VAT_STANDARD_R_NPISH=tax_base_NPISH*Simulated_Policy_Fully_Taxable*Standard_VAT_Rate,
                VAT_STANDARD_R_GOVERMENT=tax_base_GOVERMENT*Simulated_Policy_Fully_Taxable*Standard_VAT_Rate,
                VAT_STANDARD_R_TOTAL=tax_base_TOTAL*Simulated_Policy_Fully_Taxable*Standard_VAT_Rate,
                
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
              dplyr::arrange(PRODUCT_INDUSTRY_CODE)
            
            EFFECTIVE_VAT_RATES[is.na(EFFECTIVE_VAT_RATES)] <- 0
            
            
            EFFECTIVE_VAT_RATES_HH<-EFFECTIVE_VAT_RATES%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,tax_base_HH,EFFECTIVE_VAT_RATE_HH)    
            
            
            
            effective_vat_rates<-EFFECTIVE_VAT_RATES
            
            effective_vat_rates_bu=effective_vat_rates
            # 2. HBS Analysis ------------------------------------------------------------
            # 2.1 Applying effective VAT rates with HBS ------------------------------------
            'In this part, only VAT base from households are used.
            
                            These bases come from the SUT table and are distributed by CPA (64 NACE divisions).
                            Because of this, the COICOP structure was first calculated, and then the same percentages were applied to VAT Revenues from CPA. 
                            In the end, effective VAT rates are applied.
                            '
            Revenue_VAT_TOTAL_HH<-Revenue_VAT_TOTAL%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,Final_Demand_HH)
            
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
            
            
            # New
            EFFECTIVE_VAT_RATES_HH_BASE<-EFFECTIVE_VAT_RATES_HH%>%
              dplyr::select(PRODUCT_INDUSTRY_CODE,tax_base_HH,EFFECTIVE_VAT_RATE_HH)
            
            #View(EFFECTIVE_VAT_RATES_HH_BASE)
            
            # Concordance
            VAT_COICOP_PROPORTIONS_CPA_1<-left_join(VAT_COICOP_PROPORTIONS,EFFECTIVE_VAT_RATES_HH_BASE,by = c("CPA_COICOP"="PRODUCT_INDUSTRY_CODE"))%>%
              dplyr::select(CPA_COICOP,Two_digits,tax_base_HH,VAT_BASE_COICOP_5_18,EFFECTIVE_VAT_RATE_HH)%>%
              dplyr::group_by(CPA_COICOP) %>%
              dplyr::mutate(PCT = VAT_BASE_COICOP_5_18/sum(VAT_BASE_COICOP_5_18))%>%
              ungroup
            
            #View(VAT_COICOP_PROPORTIONS_CPA_1)
            
            
            # Sum of VAT new 18-11.2022
            Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL<-VAT_COICOP_PROPORTIONS_CPA_1%>%
              #dplyr::mutate(PROXY_TAX_BASE_HH=tax_base_HH*PCT)%>%
              dplyr::mutate(PROXY_TAX_BASE_HH=VAT_BASE_COICOP_5_18*PCT)%>%
              #dplyr::mutate(VAT_ESTIMATED=VAT_BASE_COICOP_5_18*EFFECTIVE_VAT_RATE_HH)%>%
              dplyr::mutate(VAT_ESTIMATED=PROXY_TAX_BASE_HH*EFFECTIVE_VAT_RATE_HH)%>%
              dplyr::group_by(Two_digits)%>%
              #dplyr::summarise(PROXY_TAX_BASE_HH = sum(PROXY_TAX_BASE_HH, na.rm = T),VAT_ESTIMATED = sum(VAT_ESTIMATED, na.rm = T))
              #dplyr::summarise(PROXY_TAX_BASE_HH = sum(PROXY_TAX_BASE_HH, na.rm = T),VAT_ESTIMATED = sum(VAT_ESTIMATED, na.rm = T),EFFECTIVE_VAT_RATE_HH=mean(EFFECTIVE_VAT_RATE_HH, na.rm = T))
              dplyr::summarise(PROXY_TAX_BASE_HH = sum(PROXY_TAX_BASE_HH, na.rm = T),VAT_ESTIMATED = sum(VAT_ESTIMATED, na.rm = T))%>%
              dplyr::mutate(EFFECTIVE_VAT_RATE_HH=VAT_ESTIMATED/PROXY_TAX_BASE_HH)
            
            #View(Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL)
            
            # Effective VAT rate
            Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL_1<-Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL%>%
              ##dplyr::mutate(EFFECTIVE_VAT_RATE_HH=VAT_ESTIMATED/PROXY_TAX_BASE_HH)
              #dplyr::mutate(EFFECTIVE_VAT_RATE_HH=round(VAT_ESTIMATED/PROXY_TAX_BASE_HH,1))
              dplyr::mutate(EFFECTIVE_VAT_RATE_HH=round(EFFECTIVE_VAT_RATE_HH,2))
            
            Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL_1[is.na(Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL_1)] <- 0
            
            
            # Merging with HBS
            data4_hbs_long_merged<-left_join(data4_hbs_long,Revenue_VAT_TOTAL_HH_CONCORDANCE_FINAL_1,by = c("COICOP_section"="Two_digits"))%>%
              dplyr::select(-c(PROXY_TAX_BASE_HH,VAT_ESTIMATED))%>%
              dplyr::mutate(VAT_BASE_HH=Expenditures/(1+EFFECTIVE_VAT_RATE_HH),
                            VAT_REVENUES_HH=VAT_BASE_HH*EFFECTIVE_VAT_RATE_HH)
            
            
            # 3.2 Merging with HBS Available assets --------------------------------------------------------
            
            
            #  Merging with other base
            
            # Adding new
            data4_hbs$Consumption_own<-NULL
            
            
            data4_hbs<-data4_hbs%>%
              dplyr::mutate(total_consumption=`01`+`02`+`03`+`04`+`05`+`06`+`07`+`08`+`09`+`10`+`11`+`12`)
            
            # Adding centiles and deciles groups 
            FINAL_UNWEIGHTED_SAMPLE<-mutate(data4_hbs,
                                            deciles=qgroup(total_consumption, 10),
                                            centiles=qgroup(total_consumption, 100),)
            
            
            data4_hbs_long_merged_deciles<-left_join(data4_hbs_long_merged,FINAL_UNWEIGHTED_SAMPLE,by = c("number_hh"="number_hh"))%>%
              dplyr::select(number_hh,COICOP_section,VAT_REVENUES_HH,centiles,deciles,total_consumption)
            
            data4_hbs_wider_merged_deciles1<-data4_hbs_long_merged_deciles%>%    
              pivot_wider(
                names_from = COICOP_section,
                values_from = c(VAT_REVENUES_HH))%>%
              dplyr::mutate(VAT_TOTAL=`01`+`02`+`03`+`04`+`05`+`06`+`07`+`08`+`09`+`10`+`11`+`12`)%>%
              dplyr::select(-c("Consumption_own"))
            
            
            
            