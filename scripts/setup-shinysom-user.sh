#!/bin/sh
groupadd -g 1000 shinysom
useradd -m -d /home/shinysom -c ShinySOM -g shinysom -u 1000 -s /bin/bash shinysom
mkdir -p /usr/local/lib/R/site-library
chown shinysom:shinysom /usr/local/lib/R/site-library

su - shinysom -c 'Rscript /tmp/scripts/install-shinysom.R'
