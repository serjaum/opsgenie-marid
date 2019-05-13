FROM ubuntu:latest
USER root

RUN apt-get update && apt-get install -y openjdk-8-jre curl wget && \
    wget https://s3-us-west-2.amazonaws.com/opsgeniedownloads/repo/opsgenie-marid_2.13.2_all.deb && \
    dpkg -i opsgenie-marid_2.13.2_all.deb && \ 
    rm -f /etc/opsgenie/marid/marid.conf && \

ADD marid.conf /etc/opsgenie/marid/marid.conf
ADD bootstrap.sh /etc/bootstrap.sh

RUN chown opsgenie:opsgenie /etc/opsgenie/marid/marid.conf

CMD ["bash", "/etc/bootstrap.sh"]
