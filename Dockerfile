FROM weaveworksdemos/msd-java:latest

RUN ls -ltr

COPY . /orderssrc
WORKDIR /orderssrc

RUN ls -ltr

RUN ["/opt/maven/mvn", "package"]

RUN find . -name *.jar
