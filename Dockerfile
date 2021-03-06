FROM mongo
MAINTAINER Rick Delhommer <rdelhommer@gmail.com>
RUN mkdir /script
ADD . /script
RUN apt-get update && apt-get install -y python-pip cron
RUN rm -rf /var/lib/apt/lists/*
RUN pip install awscli
ENTRYPOINT ["/script/start.sh"]
