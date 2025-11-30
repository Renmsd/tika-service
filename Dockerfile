FROM eclipse-temurin:17-jre

WORKDIR /app

ADD https://dlcdn.apache.org/tika/2.9.2/tika-server-standard-2.9.2.jar /app/tika-server.jar

EXPOSE 9998

CMD ["java", "-jar", "tika-server.jar", "--port", "9998"]
