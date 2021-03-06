FROM alpine

WORKDIR /webapp

RUN wget -O webapp.tar.gz https://github.com/michaeljon/SU_SEGR_5910_18WQ/blob/master/webapp.tar.gz?raw=true && \
    tar --strip-components=1 -zxvf ./webapp.tar.gz && \
    rm ./webapp.tar.gz


ENTRYPOINT [ "./dist/example-webapp-linux" ]
