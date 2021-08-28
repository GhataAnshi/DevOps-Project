# DevOps-Project
Assignment
Steps followed:
1) Created a Dockerfile to containerize the nodejs application. Please have a look at the configuration done in the docker file.

2) Created a docker-compose file to create service for mysql, mongodb,nodejs application using the Dockerfile created.

3) To create reverse proxy for the application created nginx conf file which has the servername set for the domain to be redirected to https. Since no domain name is available so I have given a dummy name

4) Created service webserver for the nginx in the docker-commpose file. Mounted the secrets which would be created by Certbot image onto the nginx to secure the communication.


5) To secure the communication within a network, added the network configuration in the docker-compoe.yml file.

6) To handle the dependency of starting up of the services, nodejs is linked to both the DB's.
If any of the service restarts, other's would be restarted
The data will be persisted as it is mounted to the local data volumes.
