# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains the all code to my personal webiste ["patrickf.xyz"](https://www.django-rest-framework.org/).

## Tools/services used
* Teraform 
* DigitalOcean
* Kubernetes
* DJANGO
* AngularJS
* PostgreSQL
* NGINX 
* Azure Pipelines 

### Future
* Status page
* GCP
* Kubernetes/GKE


### Requirements
1. Python 3.6+
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