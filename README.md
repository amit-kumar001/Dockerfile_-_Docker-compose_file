# Dockerfile_-_Docker-compose_file
## Docker-compose.yml
<ol>
<li><strong>Version </strong></br>  
Specifies the docker-Compose version: and this version does't relate directly to the version of docker-compose that you have installed this is just a version of docker-compose file format that we wish to write. </li>
<li><strong>Services</strong></br>
This section defines the containers that will be started as a part of the Docker Compose instance.</li>
<li><strong>Networks</strong> </br> 
This section is used to configure networking for your application. You can change the settings of the default network, connect to an external network, or define app-specific networks.</li>
<li><strong>Volumes</strong> </br> 
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

<li><strong>Image</strong></br>  
Sets the image that will be used to build the container and also use existing docker file from Docker Hub.</li>
<li><strong>Build</strong> </br> 
Specifies the location of the Dockerfile that will be used to build the container.</li>
<li><strong>Name_of_service</strong> </br>  
name_of_service is a keyword that used to define number of separate services.like:- db</li>
<li><strong>Restart </strong></br> 
Tells the container to restart if the system restarts.</li>
<li><strong>Volumes</strong></br> 
Mounts a linked path on the host machine that can be used by the container</li>
<li><strong>Environment</strong> </br>  
Environment variables are available to processes running inside of Docker containers.</li>
<li><strong>Depends_on </strong></br> 
docker-compose up starts services in dependency order.</li>
<li><strong>Port </strong> </br> 
ports in the HOST:CONTAINER format, container build in container port and we can browse it in host port</li>
<li><strong>Link</strong> </br> 
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
<li><strong>From</strong> </br> Skip to content
 
Pull requests
Issues
Marketplace
Explore
 
@amit-kumar001 
0
0 0 amit-kumar001/Dockerfile_-_Docker-compose_file
 Code  Issues 0  Pull requests 0  Projects 0  Wiki  Insights  Settings
Dockerfile_-_Docker-compose_file
/

 

1
# Dockerfile_-_Docker-compose_file
2
## Docker-compose.yml
3
<ol>
4
<li><strong>Version </strong></br>  
5
Specifies the docker-Compose version: and this version does't relate directly to the version of docker-compose that you have installed this is just a version of docker-compose file format that we wish to write. </li>
6
<li><strong>Services</strong></br>
7
This section defines the containers that will be started as a part of the Docker Compose instance.</li>
8
<li><strong>Networks</strong> </br> 
9
This section is used to configure networking for your application. You can change the settings of the default network, connect to an external network, or define app-specific networks.</li>
10
<li><strong>Volumes</strong> </br> 
11
Mounts a linked path on the host machine that can be used by the container. </li>
12
​
13
```
14
version: '2'
15
services:
16
​
17
networks:
18
  main:
19
    driver: bridge
20
​
21
volumes:
22
  scan_file:
23
```
24
​
25
<li><strong>Image</strong></br>  
26
Sets the image that will be used to build the container and also use existing docker file from Docker Hub.</li>
27
<li><strong>Build</strong> </br> 
28
Specifies the location of the Dockerfile that will be used to build the container.</li>
29
<li><strong>Name_of_service</strong> </br>  
30
name_of_service is a keyword that used to define number of separate services.like:- db</li>
31
<li><strong>Restart </strong></br> 
32
Tells the container to restart if the system restarts.</li>
33
<li><strong>Volumes</strong></br> 
34
Mounts a linked path on the host machine that can be used by the container</li>
35
<li><strong>Environment</strong> </br>  
36
Environment variables are available to processes running inside of Docker containers.</li>
37
<li><strong>Depends_on </strong></br> 
38
docker-compose up starts services in dependency order.</li>
39
<li><strong>Port </strong> </br> 
40
ports in the HOST:CONTAINER format, container build in container port and we can browse it in host port</li>
41
<li><strong>Link</strong> </br> 
42
Link this service to any other services in the Docker Compose file by specifying their names here.</li>
43
​
44
```
45
db:
46
      image: mysql
47
      restart: always
48
      environment:
49
        MYSQL_ROOT_PASSWORD: 123
50
        MYSQL_DATABASE: nlp_alex
51
      
52
      networks:
53
        - main
54
​
55
    web:
56
      restart: always
57
      image: nlp
58
      command: python manage.py
59
      
60
      ports:
61
        - "2226:5001"
62
​
63
      links:
64
        - db
65
      depends_on:
66
        - db
67
      networks:
68
        - main
69
​
70
```
71
</ol>
72
## Dockerfile
@amit-kumar001
Commit changes
Commit summary Optional extended description

  Commit directly to the master branch.
  Create a new branch for this commit and start a pull request. Learn more about pull requests.
 
© 2019 GitHub, Inc.
Terms
Privacy
Security
Status
Help
Contact GitHub
Pricing
API
Training
Blog
About

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


