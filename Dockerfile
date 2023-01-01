FROM azul/zulu-openjdk:19-jre

LABEL maintainer=Draper

EXPOSE  2155
# Run as non-root user
RUN groupadd -g 322 lavalink && \
    useradd -r -u 322 -g lavalink lavalink;


WORKDIR /opt/Lavalink

RUN chown -R lavalink:lavalink /opt/Lavalink

USER lavalink

COPY extras/Lavalink.jar Lavalink.jar
COPY extras/application-ignore.yml application.yml

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-jar", "Lavalink.jar"]