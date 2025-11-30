FROM apache/tika:2.7.0-full
EXPOSE 9998
CMD ["tika-server", "--port", "9998"]
