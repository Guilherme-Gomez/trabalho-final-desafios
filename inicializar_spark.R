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

# Trabalho Final - Desafios e Requisitos de Projetos Analiticos
