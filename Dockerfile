FROM ubuntu:jammy

RUN cd /tmp \
    && apt update \
    && apt install -y curl tini \
    && apt clean \
    && curl -o /usr/local/share/ca-certificates/customcert.crt http://pki.jlab.org/JLabCA.crt \
    && update-ca-certificates

ENV TZ=America/New_York
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["sleep", "infinity"]