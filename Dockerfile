FROM ubuntu:rolling
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=linux
ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.description="Doxygen build with graphviz." \
	org.label-schema.name="jef348.doxygen" \
	org.label-schema.schema-version="1.0"

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		doxygen \
		graphviz \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
