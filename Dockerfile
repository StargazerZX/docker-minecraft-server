FROM openjdk:25-jdk-slim
WORKDIR /mcserver

COPY server.jar /setup/.

EXPOSE 25565

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
