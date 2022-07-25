#!/bin/bash

gcloud config set project ${PUBSUB_PROJECT_ID}

gcloud beta emulators pubsub start --host-port=0.0.0.0:8085 --data-dir=/opt/data
