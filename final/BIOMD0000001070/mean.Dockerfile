# Use the official Anaconda base image
FROM continuumio/anaconda3

# Set the working directory
WORKDIR /app

# Clone the GitHub repository
ARG GITHUB_REPO_URL="https://github.com/THUNLP-MT/MEAN.git"
RUN git clone ${GITHUB_REPO_URL} .

# Create the Conda environment from the environment.yaml file
RUN conda env create -f env.yml

# Activate the Conda environment and set it as the default Python
RUN echo "source activate $(head -1 env.yml | cut -d' ' -f2)" > ~/.bashrc
ENV PATH /opt/conda/envs/$(head -1 env.yml | cut -d' ' -f2)/bin:$PATH

# Run the data loading and model training steps
RUN bash scripts/prepare_data_kfold.sh summaries/sabdab_summary.tsv all_structures/imgt
RUN GPU=0 bash scripts/k_fold_train.sh summaries 111 mean 9901
RUN GPU=0 bash scripts/k_fold_eval.sh summaries 111 mean 0
