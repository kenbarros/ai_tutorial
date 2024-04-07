# FROM nvcr.io/nvidia/pytorch:23.11-py3
# FROM sonoisa/arm64-docker-pytorch-tensorflow
FROM sonoisa/deep-learning-coding:pytorch1.6.0_tensorflow2.3.0
# FROM python:latest

ENV TORCH_HOME=/usr/src/ai_tutorial/cache

WORKDIR /usr/src/ai_tutorial

COPY . .

RUN pip install --upgrade pip \
	&& pip install -e .[all] \
	# && apt update -y \
	# && apt -y upgrade \
	# && apt install -y\
	# 	fonts-humor-sans \
    && pip install -r \
        requirements.txt
	# && conda update -y conda \
	# && while read requirement; do conda install --yes ${requirement}; done < requirements_pytorch.txt \
	# Clean up
	# && rm -rf /tmp/* \
	# && rm -rf /var/lib/apt/lists/* \
	# && apt clean -y

CMD [ "/bin/bash" ]

