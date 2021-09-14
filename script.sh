#!/bin/bash

cd ./utils
mvn clean package
if [[ $? == 0 ]]
then
    cd ../services
    mvn clean package
    if [[ $? == 0 ]]
    then
        cd ..
        mvn clean package
        echo -e "Build was successful, congrats\nFiles Locations:
      .\\ admin \\ target \\ admin-x.x.x.jar
      .\\ web \\ target \\ web-x.x.x.war"
    else
        echo "script exitted prematurely when building required library of Services"
    fi
else
  echo "script exitted prematurely when building required library of Util"
fi
