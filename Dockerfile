FROM google/cloud-sdk:slim

RUN apt-get update && apt-get install -y default-jdk && apt-get install google-cloud-sdk-pubsub-emulator

COPY init.sh .

RUN chmod +x init.sh

EXPOSE 8085

ENTRYPOINT ["./init.sh"]
