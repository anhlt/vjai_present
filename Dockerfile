FROM continuumio/miniconda


RUN conda create -y --name env python=3.7 numpy scipy sympy matplotlib seaborn

run conda install -y --name env jupyter

ENV PATH /opt/conda/envs/env/bin:$PATH


RUN useradd -ms /bin/bash anh
