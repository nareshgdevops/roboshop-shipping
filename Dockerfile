FROM            amazoncorretto:17
RUN             yum install shadow-utils unzip mysql -y
RUN             useradd roboshop && mkdir /app && chown -R roboshop:roboshop /app
RUN             cd /usr/local && curl -L -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip && unzip newrelic-java.zip && rm -f newrelic-java.zip
COPY            db/ /app/
COPY            target/shipping-1.0.jar /app/shipping.jar
RUN             chown -R roboshop:roboshop /app && chmod +x /app/run.sh
USER            roboshop
WORKDIR         /app
ENTRYPOINT      ["bash", "/app/run.sh"]