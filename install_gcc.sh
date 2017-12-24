#!/bin/sh

# getting some of the dependencies for gcc using package manager
echo "Downloading and Installing gcc dependencies"
sudo yum install gcc gcc-c++ gcc-gfortran gcc-go gcc-objc gcc-objc++ tar wget gcc-gnat gzip bzip2 -y
GCC_VERSION="gcc-7.2.0"

PREFIX=/home/$USER/$GCC_VERSION

echo "Downloading ${GCC_VERSION} from FTP server"
#Downloading gcc from germany ftp server
wget ftp://ftp.fu-berlin.de/unix/languages/gcc/releases/${GCC_VERSION}/${GCC_VERSION}.tar.gz -c
tar -xvf $GCC_VERSION.tar.gz
cd $GCC_VERSION
${PWD}/contrib/download_prerequisites

cd ../
mkdir $PWD/objdir
cd $PWD/objdir
$PWD/../${GCC_VERSION}/configure --prefix=$PREFIX --enable-languages=c,c++,fortran --disable-multilib

echo "Making $GCC_VERSION"
echo "...."
sleep 5
make

echo "Install to ${PREFIX}"
echo "...."
sleep 5
make install
