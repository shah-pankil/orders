FROM weaveworksdemos/msd-java:latest

RUN ls -ltr

COPY . /orderssrc
WORKDIR /orderssrc

RUN ls -ltr

RUN ["mvn", "package"]

RUN find . -name *.jar
