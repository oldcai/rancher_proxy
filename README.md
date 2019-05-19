# Rancher Proxy

This image is created to reuse the machine that hosts the rancher server.

It was implemented by creating a reversed proxy to the rancher server.

It also made generating SSL by the certificate manager be possible.

Usage:

I. Run rancher on a port other than 443, consider the command below

```
docker run -d --restart=unless-stopped \
  -p 8008:80 -p 4003:443 \
  rancher/rancher:latest
```

II. Create the reverse proxy from docker image `oldcai/rancher_proxy:latest`

1. Create a workload with the docker image `oldcai/rancher_proxy:latest`
2. Create an environment variable `RANCHER_HOST=your.domain.com`
3. Create an environment variable `RANCHER_PORT=4003`

III. Create an ingress, and grant an SSL certification to your domain if you like.