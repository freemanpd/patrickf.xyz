# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains all the source code for my personal webiste ["patrickf.xyz"](https://patrickf.xyz).

## Built using
* [ DigitalOcean Kubernetes (DOKS) ](https://www.digitalocean.com/) - cloud/container infrastructure
* [ DigitalOcean Load Balancer ](https://www.digitalocean.com/) - route external network traffic
* [ Teraform  ](https://www.terraform.io/) - infrastructure deployment automation
* [ Azure Pipelines ](https://azure.microsoft.com/en-us/services/devops/pipelines/) - continuous integration/continuous delivery (ci/cd)
* [ Azure Container Registry ](https://azure.microsoft.com/en-us/services/container-registry/) - Docker image store
* [ Azure Blob storage ](https://azure.microsoft.com/en-us/services/storage/blobs/) - Terraform remote state store
* [ Hugo ](https://gohugo.io/) - static site generators
* [ KeepIt ](https://github.com/Fastbyte01/KeepIt) - Hugo theme

### Roadmap
* Status page
* KPIs

### Requirements
1. Go
1. Hugo

## Installation
1. Clone repository
```
git clone git@github.com:freemanpd/patrickf.xyz.git

2. Run site
```
hugo server -D
```

## Changelog

### .1

## Testing
docker build -t sample:dev .
