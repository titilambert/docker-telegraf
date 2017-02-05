FROM telegraf:1.2

RUN apt-get update && apt-get install -y python python-lxml python-requests && rm -rf /var/lib/apt/lists/* && apt-get clean


