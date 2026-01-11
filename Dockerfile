#1 base image

FROM eclipse-temurin:17-jdk-alpine


#2 working dir

WORKDIR /app


#3 copy the code from your host to container (working dir)

COPY src/Main.java /app/Main.java

COPY quotes.txt quotes.txt


#4 run the command to install libs or to compile code

RUN javac Main.java


#5 Expose the port

EXPOSE 8000


#6 serve the app/keep it running

CMD ["java","Main"]
