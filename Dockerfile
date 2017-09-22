FROM elasticsearch:1.7.6
WORKDIR /usr/share/elasticsearch

ADD config/ config/
ADD plugins/ plugins/

RUN bin/plugin install mobz/elasticsearch-head \
    && bin/plugin install lukas-vlcek/bigdesk \
    && bin/plugin install elasticsearch/elasticsearch-lang-javascript/2.7.0 --verbose
