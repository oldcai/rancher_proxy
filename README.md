# Rancher Proxy

This image is created to reuse the machine that hosts the rancher server.

It was implemented by creating a reversed proxy to the rancher server.

It also made generating SSL by the certificate manager be possible.

Usage:

Run rancher on a port other than 443, consider the command below:

```
docker run -d --restart=unless-stopped \
  -p 8008:80 -p 4003:443 \
  rancher/rancher:latest
```

Then run the command below, to create the reverse proxy.

```
docker run -d --restart=unless-stopped \
  -e RANCHER_HOST=rancher.anydomain.com \
  -e RANCHER_PORT=4003 \
  oldcai/rancher_proxy
```

At last, create an ingress, and grant an SSL certification to your domain.