This project is the second project from Imran Teli of Visualpath team and is 
education only.
All rights belong to the creator (Imran Teli), whom I am really thankful to.
This project is extension of the first project (the actual multi-tier automation of vprofile project) and will be deployed and automated in AWS cloud.
The technology stack used in AWS contains:

EC2 Instance -> VM For TomCAT, RabbitMQ, MemCache and MySQL
ELB(Load Balancer) -> NGINX replacement
Autoscaling -> automation for vm scaling
S3/EFS Storage -> Shared Storage
Route 53 -> DNS resolution and network security (http vs https)

