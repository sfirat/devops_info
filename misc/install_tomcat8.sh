#!/bin/bash

wget -c -q "http://apache.cp.if.ua/tomcat/tomcat-8/v8.0.50/bin/apache-tomcat-8.0.50.tar.gz" -O /opt/apache-tomcat-8.0.50.tar.gz
cd /opt && tar zxf apache-tomcat-8.0.50.tar.gz && mv apache-tomcat-8.0.50 tomcat8 && rm apache-tomcat-8.0.50.tar.gz
setfacl -m u:jenkins:rwx /opt/tomcat8/webapps
wget "https://bitbucket.org/toorroot/tomcat7/raw/6284375e551ff0c97986d1f103e45183e52ccfc9/module2_install/tomcat-users.xml" -O /opt/tomcat8/conf/tomcat-users.xml
sed -i 's/Connector port=\"8080\"/Connector port=\"8081\"/g'  /opt/tomcat8/conf/server.xml
