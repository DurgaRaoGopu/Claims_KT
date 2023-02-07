
# Run spring boot in Docker
FROM openjdk:11

COPY --from=build /opt/app/target/*.jar claims.jar

ENV PORT 9001
EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","claims.jar"]
