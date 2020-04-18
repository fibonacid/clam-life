#!/usr/bin/env bash

# set -ex

# VARIABLES AND FUNCTIONS
# -----------------------
# edit the following ones according to your setup
BITBUCKET_REPO_SLUG='%%BITBUCKET_REPO_SLUG%%'
BITBUCKET_DEPLOYMENT_ENVIRONMENT='%%BITBUCKET_DEPLOYMENT_ENVIRONMENT%%'
DEPLOY_DIRECTORY="%%DEPLOY_DIRECTORY%%"

docker system prune -f
