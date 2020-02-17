FROM tensorflow/tensorflow:latest-gpu

RUN apt-get update && apt-get install -y --no-install-recommends \
        git

RUN cd / && git clone https://github.com/tensorflow/benchmarks.git

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]