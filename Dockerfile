FROM openjdk:8
EXPOSE 8080
ADD target/devOps-integration.jar devOps-integration.jar
ENTRYPOINT ["java","-jar","/devOps-integration.jar"] 

