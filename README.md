# awscli-java-maven
Docker image for java build and deployment to AWS.

### To run unit tests
 
 ```
 $ docker pull nanliu/serverspec:alpine
 $ docker run  -v /var/run/docker.sock:/var/run/docker.sock  \
             -v "$(pwd)":/serverspec  \
             -it nanliu/serverspec:alpine \
             /bin/sh -c "cd /serverspec && rspec spec/awscli-java-maven_spec.rb"
 
 ```