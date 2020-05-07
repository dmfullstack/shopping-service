FROM gradle

COPY build.gradle pipeline/

COPY src/ pipeline/src/

WORKDIR pipeline/

RUN gradle clean build

EXPOSE 8091

ENTRYPOINT [ "java", "-jar", "/pipeline/target/shopping-service.jar"]
