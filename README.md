# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains all the code to my personal webiste ["patrickf.xyz"](https://www.django-rest-framework.org/).

## Tools/services used
* DigitalOcean Kubernetes (DOK) - cloud/container infrastructure
* Teraform - infrastructure deployment
* Helm - container infrastructure deployment
* Azure Pipelines - CI/CD
* DJANGO - RestAPI
* React - frontend application
* PostgreSQL - database
* NGINX - reverse proxying

NOTE: I'll admit, using all the tools above for a simple personal website is definnelty overkill. However, the main purpose for chosing the tools above is for learning purposes and to provide an end-to-end introduction with a simple use-case. 

### Future
* Status page

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

## Changelog

### .1

