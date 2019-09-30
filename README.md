# patrickf.xyz
[![Build Status](https://dev.azure.com/freemanpd36/freemanpd36/_apis/build/status/freemanpd.patrickf.xyz?branchName=master)](https://dev.azure.com/freemanpd36/freemanpd36/_build/latest?definitionId=1&branchName=master)

This repository contains all the code to my personal webiste ["patrickf.xyz"](https://patrickf.xyz).

## Tools/services used
* DigitalOcean Kubernetes (DOK) - cloud/container infrastructure
* Teraform - infrastructure deployment
* Azure Pipelines - CI/CD
* Azure Container Registry - storing Docker images
* DJANGO - RestAPI
* React - frontend application
* PostgreSQL - database
* NGINX - reverse proxying

NOTE: I'll admit, using all the tools above for a simple personal website is definitely overkill. However, the main purpose of choosing the tools above is for learning purposes with a simple use-case and to demonstrate my understanding of the solution from end-to-end.

### Roadmap
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

