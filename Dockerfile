FROM indexsupply/shovel:latest
ARG DATABASE_URL
ARG RPC_URL_10
RUN echo $DATABASE_URL
RUN echo $RPC_URL_10
COPY config.json .
CMD shovel -config config.json -l :$PORT