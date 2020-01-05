library(ShinySOM)

options(shiny.maxRequestSize=512*1024^2)

ShinySOM(
  dataset.dir='datasets',
  roots=c(`Local storage`='data'),
  options=list(port=8087))
