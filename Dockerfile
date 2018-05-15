FROM broadinstitute/java-baseimage

LABEL maintainer="Hiroki Danno <redgrapefruit@mac.com>"

ENV PATH=/usr/local/Drop-seq_tools-1.0:$PATH

# install Drop-seq_tools-*
RUN cd /usr/local && \
    bash -c "jar xvf <(wget -qO- http://mccarrolllab.com/wp-content/uploads/2015/05/Drop-seq_tools-1.11.zip)" && \
    chmod +x /usr/local/Drop-seq_tools-*/*

CMD ["/bin/bash"]






