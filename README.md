# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains all the source code for my personal webiste ["patrickf.xyz"](https://patrickf.xyz).

## Built using
* [ DigitalOcean Kubernetes (DOKS) ](https://www.digitalocean.com/) - cloud/container infrastructure
* [ DigitalOcean Load Balancer ](https://www.digitalocean.com/) - route external network traffic
* [ Teraform  ](https://www.terraform.io/) - infrastructure deployment automation
* [ Azure Pipelines ](https://azure.microsoft.com/en-us/services/devops/pipelines/) - continuous integration/continuous delivery (ci/cd)
* [ Azure Container Registry ](https://azure.microsoft.com/en-us/services/container-registry/) - Docker image store
* [ Azure Blob storage ](https://www.djangoproject.com/) - Terraform remote state store
* [ Django ](https://www.djangoproject.com/) - back-end/RestAPI
* [ React ](https://reactjs.org/) - front-end/User Interface
* [PostgreSQL](https://www.postgresql.org/) - database service for Django

Note/Warning: you don't necessarily need all the above tools to deploy simple personal website. I used the above tools for learning purposes and to demontrate my understanding of the entire stack and architecture.

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

5. Build static files
```
 python manage.py collectstatic --noinput
```

## Changelog

### .1

## Testing
docker build -t sample:dev .
