FROM eclipse-temurin:18-jre-focal

WORKDIR /opt/Lavalink

COPY extras/Lavalink.jar Lavalink.jar
COPY extras/application-ignore.yml application.yml

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-Xmx4G", "-jar", "Lavalink.jar"]

