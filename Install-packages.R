'Before starting the application, the following command installs the specified libraries. '




list.of.packages <- c("DataEditR", "data.table","tidyr","readxl","dplyr","reshape2","rccmisc","xlsx",
                      "flexdashboard","ggplot2","plotly","data.table","tidyverse","knitr","DT","rpivotTable",
                      "forecast","openintro","highcharter","ggvis","DataCombine","viridisLite","readxl","reshape2","orca")

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


