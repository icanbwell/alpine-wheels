ARG PYTHON_VERSION=3.12
ARG DEBIAN_VERSION=bookworm
ARG PACKAGE_NAME=torch

FROM python:${PYTHON_VERSION}-slim-${DEBIAN_VERSION}

# Install common tools and dependencies
RUN apt-get update && apt-get install -y \
    git build-essential gcc libffi-dev python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Build wheels for the specified version
ARG PACKAGE_NAME
ARG PACKAGE_VERSION
RUN pip wheel --verbose --no-cache-dir ${PACKAGE_NAME}==$PACKAGE_VERSION --no-deps -w /wheels

# List the contents of the /wheels directory to verify the build
RUN ls -l /wheels
