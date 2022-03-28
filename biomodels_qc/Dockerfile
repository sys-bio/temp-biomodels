FROM python:3.9-slim-buster

ARG VERSION="0.0.1"
ARG SBFC_VERSION="1.3.7"

# metadata
LABEL \
    org.opencontainers.image.title="BioModels QC" \
    org.opencontainers.image.version="${VERSION}" \
    org.opencontainers.image.description="Utilities for quality controlling the BioModels database" \
    org.opencontainers.image.url="https://github.com/reproducible-biomedical-modeling/biomodels-qc/" \
    org.opencontainers.image.documentation="https://github.com/reproducible-biomedical-modeling/biomodels-qc/" \
    org.opencontainers.image.source="https://github.com/reproducible-biomedical-modeling/biomodels-qc/" \
    org.opencontainers.image.authors="Center for Reproducible Biomedical Modeling <info@reproduciblebiomodels.org>" \
    org.opencontainers.image.vendor="Center for Reproducible Biomedical Modeling" \
    org.opencontainers.image.licenses="MIT" \
    \
    base_image="python:3.9-slim-buster" \
    version="${VERSION}" \
    software="biomodels-qc" \
    software.version="${VERSION}" \
    about.summary="Utilities for quality controlling the BioModels database" \
    about.home="https://github.com/reproducible-biomedical-modeling/biomodels-qc/" \
    about.documentation="https://github.com/reproducible-biomedical-modeling/biomodels-qc/" \
    about.license_file="https://github.com/reproducible-biomedical-modeling/biomodels-qc/blob/main/LICENSE" \
    about.license="SPDX:MIT" \
    about.tags="BioModels,kinetic modeling,dynamical simulation,systems biology,biochemical networks,SBML,SED-ML,COMBINE,OMEX" \
    maintainer="Center for Reproducible Biomedical Modeling <info@reproduciblebiomodels.org>"

# Install Systems Biology Format Converter (SBFC)
RUN mkdir -p /usr/share/man/man1/ \
    && apt-get update -y \
    && apt-get install -y --no-install-recommends \
        openjdk-11-jre-headless \
        unzip \
        wget \
    \
    && cd /tmp \
    && wget https://sourceforge.net/projects/sbfc/files/sbfc/sbfc-${SBFC_VERSION}.zip/download -O sbfc-${SBFC_VERSION}.zip \
    && unzip sbfc-${SBFC_VERSION}.zip \
    && mv sbfc-${SBFC_VERSION} /opt/ \
    \
    && rm sbfc-${SBFC_VERSION}.zip \
    && apt-get remove -y \
        unzip \
        wget \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*
ENV PATH /opt/sbfc-${SBFC_VERSION}:$PATH

# Install Octave
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        octave \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install Scilab
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        scilab \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install XPP
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        wget \
        make \
        gcc \
        libx11-dev \
        libc6-dev \
        libx11-6 \
        libc6 \
    \
    && cd /tmp \
    && wget http://www.math.pitt.edu/~bard/bardware/xppaut_latest.tar.gz \
    && mkdir xpp \
    && tar zxvf xppaut_latest.tar.gz --directory xpp \
    && cd xpp \
    && make \
    && make install \
    \
    && cd /tmp \
    && rm xppaut_latest.tar.gz \
    && rm -r xpp \
    \
    && apt-get remove -y \
        wget \
        make \
        gcc \
        libx11-dev \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install SVGLint
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        curl \
        build-essential \
    \
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y  --no-install-recommends \
        nodejs \
    && npm install -g svglint \
    \
    && apt-get remove -y \
        curl \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Install Cython for better Owlready2 performance
RUN pip install cython

# fonts for matplotlib
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends libfreetype6 \
    && rm -rf /var/lib/apt/lists/*

# Copy code for package into image and install it
COPY . /root/biomodels_qc
RUN pip install /root/biomodels_qc \
    && rm -rf /root/biomodels_qc

# Entrypoint
ENTRYPOINT ["biomodels-qc"]
CMD []
