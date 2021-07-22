# MLOpsChallenge

## Task

Basic "Hello World" Python application, deployed on Docker and configured in a Kubernetes cluster that can be accessed via localhost

## Dockerizing the app
The file "Dockerfile" has the configuration to deploy a Python basic "Hello World" application using Flask library that can be accessed through localhost.

For deploying the app, first it is necessary to build the image by executing the following command in the directory where the Dockerfile is included:

```bash
docker build --tag python-docker .
```

I called my image "python-docker". Then, we need to run this image in the container, and we need to publish it into a port in the local network:

```bash
docker run --publish 5000:5000 python-docker
```

I have chosen port 5000 both inside and outside the container. With this configuration, the application would be accesible from http://localhost:5000 and it would return "Hello World!".