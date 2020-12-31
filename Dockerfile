FROM tomcat:7-jdk8-openjdk

LABEL "AUTHOR"="Mahendra Shinde(MahendraShinde@synergetics-india.com)"

RUN apt update && apt install -y gettext-base
COPY conf /usr/local/tomcat/conf/
COPY libs /usr/local/tomcat/lib/
COPY run.sh .

COPY webapps /usr/local/tomcat/webapps/

ENTRYPOINT [ "bash","run.sh" ]
