FROM elasticsearch:2.1.0
MAINTAINER Benjamin Wenderoth

ENV ES_HOME /usr/share/elasticsearch
WORKDIR ${ES_HOME}
ADD ./elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
RUN bin/plugin install royrusso/elasticsearch-HQ
RUN bin/plugin install discovery-multicast
RUN bin/plugin install analysis-icu
RUN bin/plugin install analysis-phonetic
RUN bin/plugin install http://dl.bintray.com/content/imotov/elasticsearch-plugins/org/elasticsearch/elasticsearch-analysis-morphology/2.1.0/elasticsearch-analysis-morphology-2.1.0.zip
RUN bin/plugin install lmenezes/elasticsearch-kopf/2.1.1
RUN bin/plugin install https://github.com/NLPchina/elasticsearch-sql/releases/download/2.1.0/elasticsearch-sql-2.1.0.zip
RUN bin/plugin install http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-analysis-decompound/2.1.0.0/elasticsearch-analysis-decompound-2.1.0.0-plugin.zip
##RUN bin/plugin install http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-analysis-standardnumber/2.0.0-beta2.0/elasticsearch-analysis-standardnumber-2.0.0-beta2.0-plugin.zip
## RUN bin/plugin install lukas-vlcek/bigdesk
RUN bin/plugin install http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-langdetect/2.1.0.0/elasticsearch-langdetect-2.1.0.0-plugin.zip
RUN bin/plugin install org.codelibs/elasticsearch-reindexing/2.1.0
RUN bin/plugin install org.codelibs/elasticsearch-analyze-api/2.1.0
RUN bin/plugin install mobz/elasticsearch-head

## MAybe in future we needto identify numbers
## bin/plugin install http://xbib.org/repository/org/xbib/elasticsearch/plugin/elasticsearch-analysis-standardnumber/2.0.0-beta2.0/elasticsearch-analysis-standardnumber-2.0.0-beta2.0-plugin.zip
