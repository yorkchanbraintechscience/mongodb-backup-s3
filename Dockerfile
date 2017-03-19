FROM mongo
MAINTAINER Tutum Labs <support@tutum.co>

RUN apt-get update && apt-get -y install cron && mkdir -p /backup

ENV CRON_TIME="0 0 * * *"

ADD run.sh /run.sh
VOLUME ["/backup"]
CMD ["/run.sh"]

