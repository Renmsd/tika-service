FROM apache/tika:2.9.1
EXPOSE 9998
CMD ["tika-server", "--port", "9998"]
