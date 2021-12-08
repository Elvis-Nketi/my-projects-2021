sudo apt-get update
sudo apt install openjdk-8-jre-headless
cd /opt
sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
tar -zxvf latest-unix.tar.gz
sudo mv /opt/nexus-3.30.1-01 /opt/nexus
sudo adduser nexus
sudo echo "nexus ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/nexus
sudo su - nexus 
sudo chown -R nexus:nexus /opt/nexus
sudo chown -R nexus:nexus /opt/sonatype-work
sudo nano /etc/systemd/system/nexus.service
sudo systemctl start nexus
sudo systemctl enable nexus
sudo systemctl status nexus

