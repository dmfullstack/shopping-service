FROM gradle

COPY build.gradle shopping-service/

COPY src/ shopping-service/src/

WORKDIR shopping-service/

RUN gradle build

EXPOSE 8091

ENTRYPOINT [ "java", "-jar", "/shopping-service/build/libs/shopping-service.jar"]
