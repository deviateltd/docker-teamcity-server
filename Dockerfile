FROM ubuntu:latest

MAINTAINER Magnus Bengtsson <magnus.bengtsson@deviate.net.nz>

RUN apt-get update
RUN apt-get install -y openjdk-7-jre-headless
RUN apt-get install -y tar 

# TeamCity data is stored in a volume to facilitate container upgrade
VOLUME  ["/data/teamcity"]
ENV TEAMCITY_DATA_PATH /data/teamcity

ADD files /download
RUN mkdir -p /var/teamcity
RUN tar -xzf /download/TeamCity-9.0.2.tar.gz -C /var/teamcity

EXPOSE 8111
CMD ["/var/teamcity/TeamCity/bin/teamcity-server.sh", "run"]