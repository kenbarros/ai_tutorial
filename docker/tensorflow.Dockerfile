FROM nvcr.io/nvidia/tensorflow:

WORKDIR /usr/src/ai_tutorial

COPY . .

RUN cd /opt  
# 	&& apt update -y \
	#&& apt upgrade -y \  Do not upgrade NVIDIA image OS
	# && apt install -y \
	# 	apt-utils \
	# 	fonts-humor-sans \
	# && cd /usr/src/ai_tutorial \
	# && pip install --upgrade pip \
	# && pip install -e .[all] \
	# && rm -rf /tmp/* \
	# && rm -rf /var/lib/apt/lists/* \
	# && apt clean

# CMD [ "/bin/bash" ]

