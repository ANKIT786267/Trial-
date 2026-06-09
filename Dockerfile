FROM python:3.10-slim-bookworm

RUN apt update && apt install -y git

COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip && \
    pip install -r /requirements.txt

RUN mkdir /DQTheFileDonor

WORKDIR /DQTheFileDonor

COPY start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
