#!/usr/bin/env bash
# DEPLOY PIPELINE

set -ex
BITBUCKET_REPO_SLUG='%%BITBUCKET_REPO_SLUG%%'
BITBUCKET_DEPLOYMENT_ENVIRONMENT='%%BITBUCKET_DEPLOYMENT_ENVIRONMENT%%'
DEPLOY_DIRECTORY='%%DEPLOY_DIRECTORY%%'

echo "${BITBUCKET_REPO_SLUG} deploy process has started."
cd $DEPLOY_DIRECTORY
# Using --with-registry-auth because we are using Google Container Registry
# https://github.com/moby/moby/issues/31534#issuecomment-285485666
docker stack deploy --with-registry-auth \
   --compose-file "docker-compose.${BITBUCKET_DEPLOYMENT_ENVIRONMENT}.yml" \
   "${BITBUCKET_REPO_SLUG}_${BITBUCKET_DEPLOYMENT_ENVIRONMENT}"

echo "${BITBUCKET_REPO_SLUG} deploy process is complete."