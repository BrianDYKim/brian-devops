# AWS Linux 2

# 1. update the yum package manager
sudo yum update –y

# 2. Add the Jenkins repo using the following command
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# 3. Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

sudo yum upgrade

# 4. Install the java
sudo amazon-linux-extras install java-openjdk11 -y

# 5. Install the Jenkins
sudo yum install jenkins -y

# 6. Enable the Jenkins service to start at boot
sudo systemctl enable jenkins

# 7. Start Jenkins as a service
sudo systemctl start jenkins

# 8. install docker
sudo yum install docker -y

sudo usermod -aG docker ec2-user

# 9. Enable the docker service to start at boot
sudo systemctl enable docker

sudo systemctl start docker

# 10. Assigning the permission to docker
sudo usermod -aG docker ec2-user

# 11. Assigning the permission to jenkins to communicate with docker daemon
sudo usermod -aG docker jenkins