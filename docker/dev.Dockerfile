# The base image compilation
FROM python:3.12.10-slim-bookworm

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        gcc \
        python3-venv \
        libpango1.0-0 \
        libpangoft2-1.0-0 \
        zint \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /karrio
ENV PATH="/karrio/.venv/karrio/bin:$PATH"
EXPOSE 5002

ENV PORT 5002
