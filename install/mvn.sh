!#/bin/bash
sudo hostname maven
cd /opt
sudo yum install wget nano tree unzip git-all -y
sudo yum install java-11-openjdk-devel java-1.8.0-openjdk-devel -y
java -version
git --version
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.3/binaries/apache-maven-3.8.3-bin.zip
sudo unzip apache-maven-3.8.3-bin.zip
sudo rm -rf apache-maven-3.8.3-bin.zip
sudo mv apache-maven-3.8.3/ maven
echo "export M2_HOME=/opt/maven" >>  ~/.bashrc
echo "export PATH=$PATH:$M2_HOME/bin" >> ~/.bashrc
source ~/.bashrc
mvn -version