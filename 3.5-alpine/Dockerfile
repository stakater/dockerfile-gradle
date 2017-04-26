FROM 	stakater/java8-alpine:1.8.0_121
LABEL	authors="Hazim <hazim_malik@hotmail.com>"

ARG GRADLE_VERSION=3.5
ENV GRADLE_LOCATION /usr/lib/gradle
ENV GRADLE_HOME ${GRADLE_LOCATION}/gradle-${GRADLE_VERSION}
ENV PATH ${PATH}:${GRADLE_HOME}/bin


RUN set -x && \
    wget "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -P ${GRADLE_LOCATION} && \
    mkdir -p ${GRADLE_HOME} && \
    unzip ${GRADLE_LOCATION}/gradle-${GRADLE_VERSION}-bin.zip -d ${GRADLE_LOCATION} && \
    rm ${GRADLE_LOCATION}/gradle-${GRADLE_VERSION}-bin.zip
