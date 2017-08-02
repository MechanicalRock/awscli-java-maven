# Use an official Python runtime as a base image
FROM ubuntu:latest

# Set the working directory to /app
#WORKDIR /app

# Copy the current directory contents into the container at /app
#ADD . /app

# Install any needed packages specified in requirements.txt
#RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
#EXPOSE 80

# Define environment variable
#ENV NAME World

# Install packer
RUN apt-get update
RUN apt-get install -y wget unzip awscli python openjdk-8-jdk maven groff
RUN wget https://releases.hashicorp.com/packer/1.0.3/packer_1.0.3_linux_amd64.zip
RUN unzip packer_1.0.3_linux_amd64.zip
#RUN export PATH=$PATH:~/packer/

# Run app.py when the container launches
#CMD ["python", "app.py"]

