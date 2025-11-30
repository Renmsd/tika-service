FROM eclipse-temurin:17-jdk AS builder

WORKDIR /usr/src/tika
RUN apt update && apt install -y maven git

# Clone latest Tika source code
RUN git clone https://github.com/apache/tika.git .

# ❗ حذف ملف المافن المشكل
RUN rm -f .mvn/maven.config

# Build Tika server
RUN mvn -q -DskipTests package

# ==========================
# Runtime image
# ==========================
FROM eclipse-temurin:17-jre

WORKDIR /app

# Copy built server jar
COPY --from=builder /usr/src/tika/tika-server/target/tika-server-*.jar /app/tika-server.jar

EXPOSE 9998

CMD ["java", "-jar", "tika-server.jar", "--port", "9998"]
