#!/bin/bash

# Define variables for staging-supply and dev
CLUSTER=${1:-dev-supply}
CLUSTER_TYPE=${2:-supply}

if [ "$CLUSTER_TYPE" == "supply" ]; then
  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/github-auth-secret.yaml > sealed-secrets/$CLUSTER/github-auth-secret-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred.yaml > sealed-secrets/$CLUSTER/regcred-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred-tenants.yaml > sealed-secrets/$CLUSTER/regcred-tenants-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred-flux-system.yaml > sealed-secrets/$CLUSTER/regcred-flux-system-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred-kube-system.yaml > sealed-secrets/$CLUSTER/regcred-kube-system-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/reverse-proxy-token.yaml > sealed-secrets/$CLUSTER/reverse-proxy-token-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/rabbitmq.yaml > sealed-secrets/$CLUSTER/rabbitmq-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/slack-url.yaml > sealed-secrets/$CLUSTER/slack-url-sealed.yaml

   kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/webhook-token.yaml > sealed-secrets/$CLUSTER/webhook-token-sealed.yaml
elif [ "$CLUSTER_TYPE" == "platform" ]; then
  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/github-auth-secret.yaml > sealed-secrets/$CLUSTER/github-auth-secret-sealed.yaml

   kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/google-analytics.yaml > sealed-secrets/$CLUSTER/google-analytics-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred.yaml > sealed-secrets/$CLUSTER/regcred-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/regcred-flux-system.yaml > sealed-secrets/$CLUSTER/regcred-flux-system-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/rabbitmq-infra.yaml > sealed-secrets/$CLUSTER/rabbitmq-infra-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/rabbitmq-hivecompute.yaml > sealed-secrets/$CLUSTER/rabbitmq-hivecompute-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/machines-db-credentials.yaml > sealed-secrets/$CLUSTER/machines-db-credentials-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/platform-db-credentials.yaml > sealed-secrets/$CLUSTER/platform-db-credentials-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/migrator-db-credentials.yaml > sealed-secrets/$CLUSTER/migrator-db-credentials-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/kube-config.yaml > sealed-secrets/$CLUSTER/kube-config-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/payment-gateway-api-key.yaml > sealed-secrets/$CLUSTER/payment-gateway-api-key-sealed.yaml

  kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/slack-url.yaml > sealed-secrets/$CLUSTER/slack-url-sealed.yaml

   kubeseal --format=yaml --cert=./keys/$CLUSTER/pub-sealed-secrets.pem \
  < ./secrets/$CLUSTER/webhook-token.yaml > sealed-secrets/$CLUSTER/webhook-token-sealed.yaml
fi
