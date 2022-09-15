##################################################################################
#                  INSTALAÇÃO E CARREGAMENTO DE PACOTES NECESSÁRIOS             #
##################################################################################
#Pacotes utilizados
pacotes <- c("tidyverse","arrow", "openxlsx", "reshape2", "ggplot2", "dataPreparation", 
             "caTools", "CatEncoders", "caret", "lightgbm", "pROC", "xgboost", "MLmetrics", 
             "ROCR", "ROCit", "cvms", "lares", "Ckmeans.1d.dp")

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}