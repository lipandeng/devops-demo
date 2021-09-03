# 该镜像需要依赖的基础镜像
FROM lpicanco/java11-alpine
# 将当前maven目录生成的文件复制到docker容器的/目录下
COPY target/devops-jenkins-1.0-SNAPSHOT.jar /
# 声明服务运行在8090端口
EXPOSE 8090
# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar","/devops-jenkins-1.0-SNAPSHOT.jar"]
# 指定维护者的名字
MAINTAINER climber