FROM python:3.8-slim

RUN apt update && apt install -y \
    ncbi-blast+ \
    gcc \
    make

COPY ./samtools-1.10/bin/* /usr/local/bin/
COPY ./samtools-1.10/share/man/man1/* /usr/local/share/man/man1/

RUN pip3 install \
    primerserver2

ENV PATH="/samtools-1.10/bin:${PATH}"
