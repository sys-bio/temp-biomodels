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
RUN mkdir /usr/share/man/man1/ \
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

# Install XPP
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        xppaut \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/*

# Copy code for package into image and install it
COPY . /root/biomodels_qc
RUN pip install /root/biomodels_qc \
    && rm -rf /root/biomodels_qc

# Entrypoint
ENTRYPOINT ["biomodels-qc"]
CMD []
