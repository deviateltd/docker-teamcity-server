# Teamcity server
Docker image for teamcity server

Put the downloaded tar file in the files folder. Get the latest file from https://www.jetbrains.com/teamcity/download/ under the Linux tab.

## Build
docker build -t deviateltd/teamcity:latest  .

## Push
docker push deviateltd/teamcity

##Run
docker run -dt -p 8111:8111 deviateltd/teamcity

###MySql
create database TeamCity collate utf8_bin;
create user TeamCity identified by 'TeamCity';
grant all privileges on TeamCity.* to TeamCity;
grant process on *.* to TeamCity;

Download the MySQL JDBC driver from http://dev.mysql.com/downloads/connector/j/. If the MySQL server version is 5.5 or newer, the JDBC driver version should be 5.1.23 or newer.
Place mysql-connector-java-*-bin.jar from the downloaded archive into the <TeamCity Data Directory>/lib/jdbc. Proceed with the TeamCity setup.