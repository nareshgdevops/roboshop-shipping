FROM            amazoncorretto:17
RUN             yum install shadow-utils mysql unzip -y && useradd roboshop && mkdir /app && chown -R roboshop:roboshop /app
RUN             cd /usr/local && curl -L -O https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-java.zip && unzip newrelic-java.zip && rm -f newrelic-java.zip
USER            roboshop
WORKDIR         /app
COPY            target/shipping-1.0.jar /app/shipping.jar
COPY            db/ /app/
ENTRYPOINT      ["bash", "/app/run.sh"]