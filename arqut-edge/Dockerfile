ARG BUILD_FROM
FROM $BUILD_FROM

ARG BINARY_PATH

ENV LANG=C.UTF-8

COPY run.sh /
COPY ${BINARY_PATH} /arqut-edge

RUN chmod +x /run.sh
RUN chmod +x /arqut-edge

CMD ["/run.sh"]
