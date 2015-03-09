# Teamcity server
Docker image for teamcity server

Put the downloaded tar file in the files folder. Get the latest file from https://www.jetbrains.com/teamcity/download/ under the Linux tab.

## Build
docker build -t deviateltd/teamcity:latest  .
docker push deviateltd/teamcity

##Run
docker run -dt -p 8111:8111 deviateltd/teamcity