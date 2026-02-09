FROM eclipse-temurin:17-jre

RUN apt-get update && apt-get install -y ffmpeg wget

# Download Lavalink
RUN wget -O Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

# Copy config
COPY application.yml .

# Run
CMD ["java", "-jar", "Lavalink.jar"]
