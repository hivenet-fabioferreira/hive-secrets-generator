#!/bin/bash

./encrypt-secrets.sh dev-supply supply
echo "Secrets for dev-supply supply cluster encrypted"
./encrypt-secrets.sh dev-platform platform
echo "Secrets for dev-platform platform cluster encrypted"
./encrypt-secrets.sh staging-supply supply
echo "Secrets for staging-supply supply cluster encrypted"
./encrypt-secrets.sh staging-platform platform
echo "Secrets for staging-platform platform cluster encrypted"
./encrypt-secrets.sh production-supply supply
echo "Secrets for production-supply supply cluster encrypted"
./encrypt-secrets.sh production-platform platform
echo "Secrets for production-platform platform cluster encrypted"

echo "All secrets encrypted"

echo "Rotating secrets"

cp sealed-secrets/dev-supply/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/dev-supply/secrets/github-auth-secret-sealed.yaml
cp sealed-secrets/dev-platform/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/dev-platform/secrets/github-auth-secret-sealed.yaml
cp sealed-secrets/staging-supply/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/staging-supply/secrets/github-auth-secret-sealed.yaml
cp sealed-secrets/staging-platform/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/staging-platform/secrets/github-auth-secret-sealed.yaml
cp sealed-secrets/production-supply/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/production-supply/secrets/github-auth-secret-sealed.yaml
cp sealed-secrets/production-platform/github-auth-secret-sealed.yaml ../hive-compute-ops/apps/production-platform/secrets/github-auth-secret-sealed.yaml
