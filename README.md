# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains all the code to my personal webiste ["patrickf.xyz"](https://patrickf.xyz).

## Built using
* DigitalOcean Kubernetes (DOKS) - cloud/container infrastructure
* Teraform - infrastructure deployment
* Azure Pipelines - CI/CD
* Azure Container Registry - storing Docker images
* Azure Blob storage - storing Terraform state remotely
* DJANGO - back-end RestAPI
* React - front-end application
* PostgreSQL - database
* NGINX - reverse proxying

Note: you don't nessar

### Roadmap
* Status page

### Requirements
1. Python 3.7+
1. Pipenv 

## Installation
1. Start Python virtual ENV
```
pipenv shell
```
2. Install dependencies
```
pipenv install
```
3. Run database migrations
```
python manage.py migrate
```
4. Create admin user
```
python manage.py createsuperuser --username admin
```

```
python manage.py collectstatic
```

## Changelog

### .1

