FROM azul/zulu-openjdk:19

LABEL maintainer=Draper

EXPOSE  2155
# Run as non-root user
RUN groupadd -g 322 lavalink && \
    useradd -r -u 322 -g lavalink lavalink;


WORKDIR /opt/Lavalink

RUN chown -R lavalink:lavalink /opt/Lavalink

USER lavalink

COPY Lavalink.jar Lavalink.jar
COPY application-ignore.yml application.yml

ENTRYPOINT ["java", "-Djdk.tls.client.protocols=TLSv1.1,TLSv1.2", "-Xmx4G", "-jar", "Lavalink.jar"]