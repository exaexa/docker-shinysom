 
# ShinySOM docker image

How to build and push:

1. Write commit ID(s) to `scripts/install-shinysom.R`
2. `docker build -t exaexa/shinysom:$(date +%Y%m%d)`
3. `docker image tag exaexa/shinysom:$(date +%Y%m%d) exaexa/shinysom:latest`
4. `docker login ........`
5. `docker image push exaexa/shinysom:$(date +%Y%m%d)`
6. `docker image push exaexa/shinysom:latest`
