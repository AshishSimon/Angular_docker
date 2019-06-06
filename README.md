Angular_docker

Docker build command -
docker build -f Dockerfile -t angular-app:latest .

Docker run command -
docker run -it -v <angular-application-folder-path>/package.json:/usr/src/app/package.json -v <angular-application-folder-path>:/usr/src/app   -p 4200:4200   --rm   angular-app:latest
  
  or
  docker run -it angular-app
