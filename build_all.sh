# 1.use a lastest maven
#https://linuxize.com/post/how-to-install-apache-maven-on-ubuntu-20-04/?utm_content=cmp-true
#https://maven.apache.org/download.cgi

cd /opt
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.tar.gz
sudo tar -xvf apache-maven-3.8.8-bin.tar.gz
cd 

#https://issues.apache.org/jira/browse/ZOOKEEPER-4621
cd /opt/apache-maven-3.8.8/bin && export PATH=$PWD:$PATH && cd


#zookeeper 3.7.1-src
wget https://dlcdn.apache.org/zookeeper/zookeeper-3.7.1/apache-zookeeper-3.7.1.tar.gz
tar -xvf apache-zookeeper-3.7.1.tar.gz
mv apache-zookeeper-3.7.1 zookeeper
mv zoo.cfg zookeeper/config/zoo.cfg

#CPPUNITS
sudo apt-get install libcppunit-dev

#cd /opt
# 2.compile jute to generate "zookeeper.jute.h/c" under "../zookeeper-client/zookeeper-client-c/generated/"
cd zookeeper/zookeeper-jute && mvn compile
# 3.complie zookeeper-client-c
cd ../zookeeper-client/zookeeper-client-c
autoreconf -if
./configure
make -j16

#maven
#https://phoenixnap.com/kb/install-maven-on-ubuntu
#dding zookeeper dep
#https://stackoverflow.com/questions/32255678/get-undefined-reference-when-compiling-c-client-for-zookeeper


#zookeeper install as bin
#https://phoenixnap.com/kb/install-apache-zookeeper
