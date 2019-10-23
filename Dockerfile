FROM debian:stable-slim

RUN apt-get -qq update && \
   apt-get install --no-install-recommends -y wget psmisc procps sudo \
        libcurl4-openssl-dev curl libxml2-dev \
        libapparmor1 libedit2 libcurl4-openssl-dev libssl-dev zlib1g-dev \
	r-base-dev r-base r-recommended

# This is for galaxy only
ENV GALAXY_WEB_PORT=10000 \
    CORS_ORIGIN=none \
    DOCKER_PORT=none \
    API_KEY=none \
    HISTORY_ID=none \
    REMOTE_HOST=none \
    GALAXY_URL=none \
    DISABLE_AUTH=true

VOLUME ["/import"]
WORKDIR /import/
# End of galaxy-specific part

RUN apt-get install -y libopenblas-dev

ADD ./scripts/ /tmp/scripts/
RUN /tmp/scripts/setup-shinysom-user.sh
RUN /tmp/scripts/setup-shinysom.sh

# TODO
#ADD ./GalaxyConnector /tmp/GalaxyConnector
#RUN Rscript /tmp/packages/gx.R
RUN apt-get install --no-install-recommends -y socat

ADD ./run/ /tmp/run

#socat runs on 8080 and forwards stuff to shiny on 8087
EXPOSE 8080

CMD /tmp/run/run-shinysom.sh
