FROM python:3.12.0a1-alpine

RUN apk --no-cache add \
    make \
    automake \
    gcc \
    g++ \
    subversion \
    python3-dev \
    musl-dev \
    libffi-dev \
    git && \
    pip3 install pipenv

WORKDIR /build

COPY Pipfile Pipfile.lock ./

RUN pipenv install --system --deploy --ignore-pipfile