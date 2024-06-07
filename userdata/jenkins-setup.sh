#!/bin/bash
sudo apt update
sudo apt install openjdk-11-jdk -y
sudo apt install maven wget unzip -y

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update
sudo apt-get install jenkins -y
###




https://www.jenkins.io/doc/book/installing/linux/

#!/bin/bash
sudo apt update

sudo apt install openjdk-11-jdk -y

curl -fsSl https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null


echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update

sudo apt-get install jenkins -y

------------------------------------
home directory of jenkins is => ls /var/lib/jenkins/
cat /var/lib/jenkins/secrets/initialAdminPassword

282f7165b3a44f239fff4280571b5bf1
admin.devops.xyz

Jenkins credentials
UN = Admin
PW = Sija123abc?
JenkinsUrl = http://admin.mydevops.xyz

JDK11 Name & path form jenkins ls /usr/lib/jvm/
Name = OracleJDK11
path = /usr/lib/jvm/java-1.11.0-openjdk-amd64

Install JDK 8
apt update
apt install openjdk-8-jdk -y

JDK8 Name & path form jenkins ls /usr/lib/jvm/
Name = OracleJDK8
path = /usr/lib/jvm/java-1.8.0-openjdk-amd64

Add Maven
Name = MAVEN3

apt update && apt install maven -y

mkdir -p versions
# Replace problematic characters ':' and ' ' (space) with underscores '_'
CLEAN_TIMESTAMP=$(echo $BUILD_TIMESTAMP | tr ': ' '_')
cp target/vprofile-v2.war versions/vprofile-v$CLEAN_TIMESTAMP.war

