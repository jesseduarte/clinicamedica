# Use uma imagem base do OpenJDK 23
FROM openjdk:23-jdk-slim

# Defina o diretório de trabalho
WORKDIR C:\projetos\clinicaMedica

# Copie o arquivo JAR da sua aplicação para o contêiner
COPY target/*.jar app.jar

# Exponha a porta em que a aplicação irá rodar
EXPOSE 3000

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]