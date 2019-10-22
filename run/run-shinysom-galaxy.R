library(ShinySOM)
ShinySOM(
  dataset.dir='datasets',
  roots=c(Galaxy='/import', Local='data'),
  options=list(port=8087))
