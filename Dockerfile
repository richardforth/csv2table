FROM alpine:latest

RUN apk update && \
    apk add wget && \
    apk add make && \
    apk add gzip && \
    apk add build-base && \
    apk add groff && \
    apk add git
RUN rm -rf /var/cache/apk/*
RUN git clone https://github.com/richardforth/csv2table.git
RUN cd csv2table && ls -la
RUN cd csv2table && tar -xzvf csv2table-0.1.tar.gz
RUN ls -l
RUN cd csv2table/csv2table-0.1 && \
    ./configure; make; make install;
RUN echo -e "Example CSV Data for conversion\n1,2,3,4,5\n6,7,8,9,10" | csv2table
