
FROM docker.elastic.co/elasticsearch/elasticsearch:6.6.0
RUN yum -y install java

RUN wget http://dl.embulk.org/embulk-latest.jar -O /usr/local/bin/embulk
RUN chmod +x /usr/local/bin/embulk
RUN embulk gem install embulk-input-mysql embulk-output-elasticsearch

RUN bin/elasticsearch-plugin install analysis-kuromoji
