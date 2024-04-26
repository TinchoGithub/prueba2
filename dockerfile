# Usa una imagen de OpenJDK como base
FROM openjdk:17

# Crea un directorio de la aplicación
WORKDIR /app

# Copia el directorio de compilación Gradle (incluyendo el JAR) al contenedor
COPY build/libs/bank-service-0.0.1-SNAPSHOT.jar /app/bank-service.jar

# Expone el puerto en el que la aplicación se ejecutará en el contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación Spring
CMD ["java", "-jar", "bank-service.jar"]