#!/bin/bash

helm upgrade \
    peanubudget \
    ./kubernetes \
    --install \
    --create-namespace \
    --atomic \
    --wait \
    --namespace staging \
    --set database.username=${DATABASE_USERNAME} \
    --set database.password=${DATABASE_PASSWORD} \
    --set database.fqdn=${DATABASE_FQDN} \
    --set loadBalancer.ip=${KUBERNETES_IP}
