#!/bin/bash

# Instructions
## Remember to run the `azure-login.sh` script first

az aks get-credentials \
    --resource-group ${RESOURCE_GROUP_NAME} \
    --name ${KUBERNETES_NAME}
