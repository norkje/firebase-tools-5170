FROM node:16.18 AS init

ARG FIREBASE_TOOLS_VERSION=11.6.0

ENV JAVA_HOME=/opt/java/openjdk
COPY --from=eclipse-temurin:17.0.5_8-jre-jammy $JAVA_HOME $JAVA_HOME
RUN ln -s $JAVA_HOME/bin/java /usr/local/bin/java

RUN npm install -g firebase-tools@$FIREBASE_TOOLS_VERSION
RUN firebase setup:emulators:firestore && firebase setup:emulators:ui

WORKDIR "/usr/app"

ADD public public
ADD firebase.json firebase.json

EXPOSE 5000

ENTRYPOINT ["firebase"]
CMD ["--project=demo-5170","emulators:start"]
