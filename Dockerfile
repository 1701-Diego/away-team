FROM busybox:ubuntu-14.04

ADD http://onsi-public.s3.amazonaws.com/riker.tar.gz /riker.tar.gz
ADD http://onsi-public.s3.amazonaws.com/crusher.tar.gz /crusher.tar.gz
ENTRYPOINT ["/riker"]
RUN tar -zxf /riker.tar.gz && \
    chmod +x /riker && \
    rm /riker.tar.gz && \
    tar -zxf /crusher.tar.gz && \
    chmod +x /crusher && \
    rm /crusher.tar.gz
    
