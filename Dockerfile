FROM python:3.7.1-alpine

COPY Pipfile /
COPY Pipfile.lock /

RUN apk add gcc libc-dev postgresql-client postgresql-dev git make vim bash grep && \
    pip3 install --upgrade pip cython && \
    pip3 install pipenv && \
    pipenv install --system --dev && \
    apk del -r postgresql && \
    rm -rf /Pipfile /Pipfile.lock
