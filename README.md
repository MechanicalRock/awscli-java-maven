# awscli-java-maven
Docker image for java build and deployment to AWS.

### To run unit tests

TODO: Running tests throws this error ( Unable to find out how to set time out for serverspec):
 ```
 awscli-java-maven Container installed Apps Command "aws --version" stdout 
      Failure/Error: image = Docker::Image.build_from_dir('.')
      Docker::Error::TimeoutError:
        read timeout reached
        
      # /usr/local/bundle/gems/docker-api-1.33.2/lib/docker/connection.rb:52:in `rescue in request'
      # /usr/local/bundle/gems/docker-api-1.33.2/lib/docker/connection.rb:38:in `request'
      # /usr/local/bundle/gems/docker-api-1.33.2/lib/docker/connection.rb:65:in `block (2 levels) in <class:Connection>'
      # /usr/local/bundle/gems/docker-api-1.33.2/lib/docker/image.rb:259:in `build_from_tar'
      # /usr/local/bundle/gems/docker-api-1.33.2/lib/docker/image.rb:278:in `build_from_dir'
      # ./spec/awscli-java-maven_spec.rb:6:in `block (2 levels) in <top (required)>'
      # ------------------
      # --- Caused by: ---
      # IO::EAGAINWaitReadable:
      #   Resource temporarily unavailable - read would block
      #   <internal:prelude>:78:in `__read_nonblock'
 ```
 ```
 $ docker pull nanliu/serverspec:alpine
 $ docker run  -v /var/run/docker.sock:/var/run/docker.sock  \
             -v "$(pwd)":/serverspec  \
             -it nanliu/serverspec:alpine \
             /bin/sh -c "cd /serverspec && rspec spec/awscli-java-maven_spec.rb"
 
 ```