FROM google/cloud-sdk:alpine

RUN apk --update add openjdk8-jre
RUN gcloud components install pubsub-emulator beta --quiet

COPY init.sh .

RUN chmod +x init.sh

EXPOSE 8085

ENTRYPOINT ["./init.sh"]
