FROM openjdk:17-jdk

RUN useradd -ms /bin/bash appuser

WORKDIR /app

COPY /build/libs/plutusstash-docker-app.jar plutusstash-docker-app.jar

USER appuser

ENV JAVA_OPTS='-Xms256m -Xmx512m'

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar plutusstash-docker-app.jar"]

EXPOSE 8080

LABEL authors="techleopard"
