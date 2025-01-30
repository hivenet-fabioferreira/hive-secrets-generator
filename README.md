## Fetch public key of sealed secrets controller

```
kubeseal --fetch-cert \
--controller-name=sealed-secrets-controller \
--controller-namespace=flux-system \
> ./keys/$CLUSTER/pub-sealed-secrets.pem
```

## Generate sealed secrets

1. Create cluster directory in `secrets`, `keys` and `sealed-secrets`.
2. Fetch sealed secrets controller certificate and store in keys directory. Use command in previous section by replacing `$CLUSTER` with the cluster name.
3. Create your secrets in `secrets/$CLUSTER`
4. Edit `CLUSTER` and `CLUSTER_TYPE` in `encrypt-secrets.sh` and run the script.
5. Copy generated sealed secrets in directory `sealed-secrets/$CLUSTER` to fluxcd environment directory.
