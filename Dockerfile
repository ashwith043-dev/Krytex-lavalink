FROM eclipse-temurin:17-jre-alpine
RUN apk add --no-cache ffmpeg
COPY Lavalink.jar .
COPY application.yml .
CMD ["java", "-jar", "Lavalink.jar"]
