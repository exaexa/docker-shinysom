#!/bin/sh
su - shinysom -c 'socat TCP-LISTEN:8080,fork TCP:localhost:8087' &
su - shinysom -c 'Rscript /tmp/run/run-shinysom.R'
