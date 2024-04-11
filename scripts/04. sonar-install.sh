#############################################################################
NOTE: Make sure you add the password of each user like ec2, sonarqube and root
                    using the sudo passwd username

             Note 2: Port number of Sonarqube server is 9000
                Note 3: Username:admin  Password:admin
#############################################################################

## 1.. Install jdk 17

sudo yum install java-17-amazon-corretto-devel -y

##  2.. Add sonarqube as user as for sonarqube specific user is required (make sure u set password using sudo passwd)
sudo useradd sonarqube
sudo passwd sonarqube
sudo passwd ec2-user
sudo passwd root

##  3.. add sonarqube user in the sudoers list or visudo in the wheel group in order to user sudo
sudo visudo

## Add entry to visudo entry after root account
sonarqube    ALL=(ALL)       ALL

## down the sonarqube community verison using tghe wget command

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.1.88267.zip

## 4. move it /opt

sudo mv sonarqube-10.4.1.88267.zip /opt/sonarqube-10.4.1.88267.zip
cd /opt

##  5.. unzip th folder
sudo unzip sonarqube-10.4.1.88267.zip

## 6.. change the ownership of sonarqube 
sudo chown -R sonarqube:sonarqube sonarqube-10.4.1.88267
su sonarqube

## 7.. start the server 
cd sonarqube-10.4.1.88267/bin/linux-x86-64/
./sonar.sh start

## 8.. check the status using 
./sonar.sh status
