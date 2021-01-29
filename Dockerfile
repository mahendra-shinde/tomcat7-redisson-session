FROM tomcat:7-jdk8-openjdk

LABEL "AUTHOR"="Mahendra Shinde(MahendraShinde@synergetics-india.com)"
RUN apt update && apt install -y gettext-base
COPY conf /usr/local/tomcat/conf/
COPY libs /usr/local/tomcat/lib/
COPY run.sh .

COPY webapps /usr/local/tomcat/webapps/
## Set 1GB Max Memory for tomcat / Must match with Kubernetes Deployment!
## Set 512MB Allocated Memory for tomcat / Must match with kubernetes deployment!
## the resource.limits in YAML files
ENV CATALINA_OPTS="-Xmx1g -Xms512m -XX:MaxPermSize=1024m"

ENTRYPOINT [ "bash","run.sh" ]
