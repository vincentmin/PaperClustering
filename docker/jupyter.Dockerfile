FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime

RUN mkdir /app

COPY requirements.txt /app
COPY setup.py /app
COPY src/ /app/src

WORKDIR /app

# needed to install HDBSCAN
RUN apt update && apt-get install -y gcc

RUN pip install --upgrade pip && pip install -e .

# start jupyter server
RUN pip install jupyter
COPY docker/run_jupyter_server.sh /
RUN chmod +x /run_jupyter_server.sh

CMD "/run_jupyter_server.sh"