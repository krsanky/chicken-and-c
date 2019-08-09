#CHICKEN_INSTALL_REPOSITORY 
#CHICKEN_REPOSITORY_PATH
#/home/wise/CHICKEN/chicken

export CHICKEN_INSTALL_REPOSITORY=/home/wise/CHICKEN/chicken/9
CHICKEN_REPOSITORY_PATH=/home/wise/CHICKEN/chicken/9:/usr/local/lib/chicken/9
export CHICKEN_REPOSITORY_PATH

#unset CHICKEN_INSTALL_REPOSITORY
#chicken-install  -repository     
#/usr/local/lib/chicken/9
#chicken-install  -repository                                            
#/home/wise/CHICKEN/chicken




#CSC_OPTIONS='-I/usr/pkg/include/mysql -L/usr/pkg/lib/mysql -L -R/usr/pkg/lib/mysql' 
#CHICKEN_C_INCLUDE_PATH and CHICKEN_C_LIBRARY_PATH can also be used
#to override include- and linker-paths.  Each of these variables
#may contain one or more
export CHICKEN_C_INCLUDE_PATH="/usr/local/include"
export CHICKEN_C_LIBRARY_PATH="/usr/local/lib"

