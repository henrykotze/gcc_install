## README

* This install script is intended to be used on CentOS, where at the time, the latest version of gcc was not available through the package manager.

* Remember to make the script executable ```chmod +x ./install_gcc.sh```

* The script will only ask for permission to install the necessary depandancies in the beginning.

* This script will only compile GCC compatible with the following langagues:
 C
 C++
 Fortran

* Please set the prefix in the install script to your desired directory, otherwise it will be installed at ```/home/$USER/$GCC_VERSION```

* The GCC_VERSION variable can be changed to install other versions of GCC, so long the format is kept the same ie: gcc-7.1.0 or gcc-6.1.0. This should compile and install unless GNU changes their directory structure within the source code.

* This will download all the necessary packages for gcc-7.2.0

* The compiler will only be a 32bit- or 64bit compiler, depending on your machine 


### After a successfull install

* If you type ```gcc --version``` in your terminal it will output the latest version that your package manager support. To ensure the newly installed gcc is used in each compiling of your code, you need to set your environmental variables. This can be done in 3 ways.

1. export the environmental variables to locate the newly installed gcc. There is a drawback in this approach: You will need to export the variables in each new session you start. (This is my method, since in my case, its benefical)
    Use my gcc-setenv.sh script

2. Set the variables, in your bashrc file. This is a more permanent approach.

3. Use modulefiles: Probably best or professional approach, but takes time to set up

### Future Plans
---
* Update the script to support more languages