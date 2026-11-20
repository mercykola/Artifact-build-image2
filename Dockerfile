   FROM tomcat:9.0-jdk21
   COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war
