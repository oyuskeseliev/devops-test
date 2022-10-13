# DevOPS Sample task

## Background
You have a simple GO app. The app creates a webpage that outputs 2 eviroment variables, the current host name and a preset variable for the enviroment.

## Task

Create a pipline that will bild the app, create a container and push it to a container registy. The task must be completed with the following things in mind:

* you need to fork the current repository
* any addition changes that you make (docker files, config files, etc.) must be pushed using pull request to the original repository
* you need to create a container and push the container to a Docker repo (the repo credentials are send using e-mail)
* you need to change the `dep-env` enviroment to prod during contrainer creation
