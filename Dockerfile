FROM            amazoncorretto
RUN             yum install shadow-utils -y && useradd roboshop && mkdir /app && chown roboshop:roboshop /app
USER            roboshop
WORKDIR         app
COPY            target/shipping-1.0.jar /app/shipping.jar
ENTRYPOINT      ["java","-jar","/app/shipping.jar"]