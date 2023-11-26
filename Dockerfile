# Use an official OpenJDK runtime as a parent image
#FROM openjdk:8-jre-alpine
FROM openjdk:17-alpine

# Set the working directory to /minecraft
WORKDIR /minecraft

# Copy the spigot.jar file into the container at /minecraft
# spigot-1.19.jar spigot.jar
COPY . .

# Create a volume for the Minecraft server data
VOLUME ["/minecraft/data"]

# Expose the port that the Minecraft server will run on
EXPOSE 25565

# Accept the Minecraft EULA
#RUN echo "eula=true" > eula.txt

# Command to run the server when the container is started
CMD ["java", "-Xmx1024M", "-Xms512M", "-jar", "spigot-1.19.2.jar", "nogui"]
