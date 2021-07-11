# 1. Configurações iniciais

# 1.1. Limpar a área de trabalho
ls()
rm(list=ls())

install.packages("rJava")
install.packages("caret")
install.packages("mlbench")
install.packages("tidyverse")


library(caret)
library(mlbench)
library(SparkR)
library(rJava)

spark_path <-'C:/spark-3.0.1-bin-hadoop3.2'
if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
  Sys.setenv(SPARK_HOME = spark_path)
}
sparkR.session(master = "local[*]", sparkConfig = list(spark.driver.memory = "6g"))
sqlContext <- sparkR.session(sc)
sparkR.conf()

# Basic Functions

class(df)
# Incluir coluna
df$new_col <- df$ROW_ID

# Selecionar colunas
subsetDF <- df[,c("CODIGO_RODEIRO","CICLO_RODEIRO")]
subsetDF

# Selecionar linhas
row_selection <- subset(df,df$ROW_ID >= 100, select = c(1:10))
head(row_selection)

# Selecionar primeira linha
firstRow <- df[[3,]]
firstRow

# Mudar nome da coluna
names(subsetDF) <- c("Codigo_Rodeiro","Cliclo_Rodeiro")

# Funções - dim
dim(row_selection)

# Funções - head
head(collect(count(group_by(df,"CICLO_RODEIRO"))))


?`subset,SparkDataFrame-method`
# Trabalho Final - Desafios e Requisitos de Projetos Analiticos
