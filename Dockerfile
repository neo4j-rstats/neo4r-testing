FROM colinfay/neo4r-docker

RUN R -e 'remotes::install_github("ThinkR-open/testdown@dev")'

RUN R -e 'remove.packages("neo4r")' && R -e 'remotes::install_github("neo4j-rstats/neo4r@testing-env")'

RUN mkdir /home/testneo

COPY testneo.R /home/testneo/testneo.R

CMD cd /home/neo4j && sudo chmod -R 777 neo4j-community-* && cd neo4j-community-* && bin/neo4j-admin set-initial-password ${NEOPASS} && bin/neo4j start && bin/neo4j status && cd /home/testneo && R -e 'source("testneo.R")'

