FROM maven
#WORKDIR /app
COPY . .

RUN mvn clean package

RUN java -cp target/helloworld-1.1.jar com.coveros.demo.helloworld.HelloWorld
