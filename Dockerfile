FROM weaveworksdemos/msd-java:latest

CMD ["mvn","-DskipTests","Package"]

WORKDIR /usr/src/app
RUN ls -ltr
COPY *.jar ./app.jar

RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENV JAVA_OPTS "-Djava.security.egd=file:/dev/urandom"
ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
