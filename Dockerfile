FROM apache/tika:2.8.0-full
EXPOSE 9998
CMD ["tika-server", "--port", "9998"]
