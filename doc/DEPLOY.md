# Deploy

Deployment is done through Bitbucket Pipelines.
Every time you push a commit to to the `production` branch, bitbucket will perform the following tasks:

- Build a docker image
- Push the image to the Google Container Registry
- Copy files to the remote server and recreate the services
