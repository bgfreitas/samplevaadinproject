# https://dzone.com/articles/a-dockerfile-for-maven-based-github-projects
# by Nicolas Frankel

### build command ###
# docker build -t ara_alpine .

FROM alpine/git as clone
WORKDIR /app
RUN git clone -b master https://github.com/bgfreitas/samplevaadinproject.git


FROM maven:3.5-jdk-8-alpine as build
COPY --from=clone /app/AraSolution /home/ara/AraSolution
WORKDIR /app
RUN mvn clean package -DskipTests -P production
EXPOSE 8080
CMD ["java -jar target/samplevaadinproject-2.0-SNAPSHOT.jar"]
