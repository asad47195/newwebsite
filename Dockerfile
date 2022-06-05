FROM tomcat
ADD jenkins_webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
