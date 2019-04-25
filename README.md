# Dockerfile_-_Docker-compose_file
<ol>
## Docker-compose.yml
<ol>
<li><strong>Version </strong></br>  
Specifies the docker-Compose version: and this version does't relate directly to the version of docker-compose that you have installed this is just a version of docker-compose file format that we wish to write. </li>
<li><strong>Services</strong></br>
This section defines the containers that will be started as a part of the Docker Compose instance.</li>
<li>Networks </br> 
This section is used to configure networking for your application. You can change the settings of the default network, connect to an external network, or define app-specific networks.</li>
<li>Volumes </br> 
Mounts a linked path on the host machine that can be used by the container. </li>

```
version: '2'
services:

networks:
  main:
    driver: bridge

volumes:
  scan_file:
```

<li>Image</br>  
Sets the image that will be used to build the container and also use existing docker file from Docker Hub.</li>
<li>Build </br> 
Specifies the location of the Dockerfile that will be used to build the container.</li>
<li>Name_of_service </br>  
name_of_service is a keyword that used to define number of separate services.like:- db</li>
<li>Restart </br> 
Tells the container to restart if the system restarts.</li>
<li>Volumes</br> 
Mounts a linked path on the host machine that can be used by the container</li>
<li>Environment </br>  
Environment variables are available to processes running inside of Docker containers.</li>
<li>Depends_on </br> 
docker-compose up starts services in dependency order.</li>
<li>Port  </br> 
ports in the HOST:CONTAINER format, container build in container port and we can browse it in host port</li>
<li>Link </br> 
Link this service to any other services in the Docker Compose file by specifying their names here.</li>

```
db:
      image: mysql
      restart: always
      environment:
        MYSQL_ROOT_PASSWORD: 123
        MYSQL_DATABASE: nlp_alex
      
      networks:
        - main

    web:
      restart: always
      image: nlp
      command: python manage.py
      
      ports:
        - "2226:5001"

      links:
        - db
      depends_on:
        - db
      networks:
        - main

```
</ol>
## Dockerfile
<ol>
<li><strong>From</strong> </br> 
 Name of the base image that used to start the process.</li>
 
<li><strong>Run</strong>  </br> 
It takes a command as its argument and runs it to form the image.</li>

<li><strong>Add</strong> </br> 
Add command gets two arguments a source and a destination. It basically copies the files from the source on the host into the container's own filesystem at the set destination. COPY and ADD are both Dockerfile instructions that use for similar purposes.</li>

<li><strong>WORKDIR</strong> </br> 
The WORKDIR directive is used to set where the command defined with CMD is to be executed.</li>

<li><strong>ENTRYPOINT</strong> </br> 
ENTRYPOINT argument sets the concrete default application that is used every time a container is created using the image.</li>

<li><strong>ENV</strong>  </br> 
ENV command is used to set the environment variables.</li>

<li><strong>CMD</strong>  </br> 
CMD can be used for executing a specific command within the container.</li>
<li><strong>EXPOSE</strong> </br> 
A specific port to enable networking between the container and the outside world.</li>
</ol>


