#install all packages
# unabl to build https://github.com/tgockel/zookeeper-cpp.git
git clone https://github.com/Inphi/zookeeper-cpp.git
cd zookeeper-cpp
rm -rf CMakeLists.txt
cp ../CMakeLists.txt .
cmake .
make
echo "ready to go"
