
install.packages('devtools')

install.packages("BiocManager")
BiocManager::install("flowCore")

devtools::install_github('tsieger/mhca')
devtools::install_github('exaexa/EmbedSOM')
devtools::install_github('exaexa/scattermore')
devtools::install_github('exaexa/shinyDendro')
devtools::install_gitlab('exaexa/ShinySOM')

setwd('/home/shinysom')
dir.create('data')
dir.create('datasets')
