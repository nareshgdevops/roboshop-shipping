FROM            amazoncorretto
RUN             useradd roboshop
RUN             mkdir /app && chown roboshop:roboshop /app
USER            roboshop
WORKDIR         app
COPY            target/shipping-0.0.1.jar shipping.jar
ENTRYPOINT      ["java","-jar","/shipping.jar"]