FROM openjdk:8
ADD build/libs/weather-app-0.0.1-SNAPSHOT.jar weather-app-0.0.1-SNAPSHOT.jar
EXPOSE 8000
ENTRYPOINT ["java", "-jar", "weather-app-0.0.1-SNAPSHOT.jar"]

#
#docker build -f Dockerfile -t applicationName ApplicationRoot Path
#docker build -f Dockerfile -t docker-weather-app C:\dev\repo\weather-app
#
#
#Exmple docker run -p Dockerport:TomcatPost   docker-weather-app
#docker run -p 8000:8000   docker-weather-app