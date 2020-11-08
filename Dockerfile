FROM maven:3.6
ADD . .
# 使用阿里云的镜像构建
ADD settings.xml /usr/share/maven/conf/settings.xml
RUN mvn clean package && \
    mv target/aspectj-demo.jar / && \
    chmod +x aspectj-demo.jar

CMD ["java","-jar","aspectj-demo.jar"]
