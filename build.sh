#install all packages
# unabl to build https://github.com/tgockel/zookeeper-cpp.git
#c++ wrapper for c api - https://github.com/yandaren/zk_cpp.git

git clone https://github.com/Inphi/zookeeper-cpp.git
cd zookeeper-cpp
rm -rf CMakeLists.txt
cp ../CMakeLists.txt .
cmake .
make
echo "ready to go"

#bin - https://phoenixnap.com/kb/install-apache-zookeeper . https://phoenixnap.com/kb/install-apache-zookeeper
cd /opt
sudo wget https://dlcdn.apache.org/zookeeper/zookeeper-3.6.4/apache-zookeeper-3.6.4-bin.tar.gz
sudo tar -xvf apache-zookeeper-3.6.4-bin.tar.gz
cd apache-zookeeper-3.6.4-bin


#install zookeeper
sudo wget https://dlcdn.apache.org/zookeeper/zookeeper-3.6.4/apache-zookeeper-3.6.4.tar.gz
sudo tar -xvf apache-zookeeper-3.6.4.tar.gz
cd apache-zookeeper-3.6.4
sudo apt install maven
mvn -pl zookeeper-jute compile
#or cd zookeeper-juite cd zookeeper-release-3.6.2/zookeeper-jute/; mvn compile


wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
tar -xvf apache-maven-3.6.3-bin.tar.gz
mv apache-maven-3.6.3 /opt/

#add to bashrc
#M2_HOME='/opt/apache-maven-3.6.3'
#PATH="$M2_HOME/bin:$PATH"
#export PATH

