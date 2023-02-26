#!/bin/bash

helm upgrade \
    peanubudget \
    ./kubernetes \
    --install \
    --atomic \
    --wait \
    --set image.repository=${CONTAINER_REGISTRY_FQDN} \
    --set image.name=${IMAGE_NAME} \
    --set image.tag=latest \
    --set database.username=${DATABASE_USERNAME} \
    --set database.password=${DATABASE_PASSWORD} \
    --set database.fqdn=${DATABASE_FQDN} \
    --set loadBalancer.ip=${KUBERNETES_IP}
