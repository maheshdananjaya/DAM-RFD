#compile flags
cd src/
g++ -I ../zookeeper/zookeeper-client/zookeeper-client-c/include/ -I ../zookeeper/zookeeper-client/zookeeper-client-c/generated/ -L ../zookeeper/zookeeper-client/zookeeper-client-c/ -lzookeeper-mt -o client zk_cpp.cpp
