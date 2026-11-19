FROM @@CONTAINER_IMAGE_NAME@@:@@CONTAINER_OS_VERSION_ALT@@

ARG IMAGE_CREATED=unknown
@@LABELS@@LABEL org.opencontainers.image.source='@@GIT_URL@@'
LABEL org.opencontainers.image.documentation='@@GIT_URL@@'

RUN \
@@PACKAGES@@@@INSTALL@@@@CLEANUP@@
ENV SCALAENV_ROOT=/root/.scalaenv
ENV PATH="/root/.scalaenv/bin:${PATH}"

WORKDIR /root

ENTRYPOINT ["@@ENTRYPOINT@@"]
