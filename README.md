# Introduction

A terraform docker image with preinstalled commercetools terraform provider.

## Versions Matrix

| Version | terraform version | commercetools version |
| ------- | ----------------- | --------------------- |
| 0.21    | 0.12.20           | 0.21.0                |
| 0.22    | 0.12.24           | 0.21.0                |

## Example

An example of running plan on the resources:

```shell
docker run \
    --env CTP_PROJECT_KEY \
    --env CTP_CLIENT_SECRET \
    --env CTP_CLIENT_ID \
    --env CTP_AUTH_URL \
    --env CTP_API_URL \
    --env CTP_SCOPES \
    --rm \
    -i \
    -v $(pwd):/config \
    cabiri/ct-builder:0.22 \
    plan
```
