FROM gradle

COPY build.gradle shopping-service/

COPY src/ shopping-service/src/

WORKDIR shopping-service/

RUN gradle clean build

EXPOSE 8091

ENTRYPOINT [ "java", "-jar", "/shopping-service/build/lib/shopping-service.jar"]
