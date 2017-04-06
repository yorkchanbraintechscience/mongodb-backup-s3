FROM mongo

RUN apt-get update && apt-get -y install cron awscli

ENV CRON_TIME="3 0 * * *" \
  TZ=US/Eastern \
  CRON_TZ=US/Eastern

ADD run.sh /run.sh
CMD /run.sh
