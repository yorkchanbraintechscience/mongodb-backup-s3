FROM mongo

# Install Python and Cron
RUN apt-get update && \
    apt-get -y install python python-pip libyaml-dev python-dev cron

# Install AWS CLI and schedule package
RUN pip install pyyaml awscli --upgrade --user

ENV CRON_TIME="0 3 * * *" \
  TZ=US/Eastern \
  CRON_TZ=US/Eastern

ADD run.sh /run.sh
CMD /run.sh
