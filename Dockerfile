FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/
CMD ["catalina.sh", "run"]
