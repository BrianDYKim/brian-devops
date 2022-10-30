# elasticsearch build를 위한 도커파일
ARG ELK_VERSION

FROM docker.elastic.co/elasticsearch/elasticsearch:${ELK_VERSION}
RUN elasticsearch-plugin install analysis-nori