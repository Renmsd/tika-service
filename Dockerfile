FROM apache/tika:latest
EXPOSE 9998
CMD ["java", "-jar", "/usr/share/tika/tika-server.jar", "--host=0.0.0.0", "--port=9998"]