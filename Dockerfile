FROM            amazoncorretto
RUN             yum install shadow-utils -y && useradd roboshop && mkdir /app && chown roboshop:roboshop /app
USER            roboshop
WORKDIR         /app
COPY            target/shipping-1.0.jar /app/shipping.jar
COPY            run.sh /app/run.sh
ENTRYPOINT      ["bash", "/app/run.sh"]