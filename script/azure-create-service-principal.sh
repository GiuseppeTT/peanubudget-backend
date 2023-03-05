#!/bin/bash

az ad sp create-for-rbac \
    --name peanubudget-backend-github \
    --role Contributor \
    --scopes /subscriptions/${SUBSCRIPTION_ID} \
    --sdk-auth
