# Use the official itzg/minecraft-server image as base
FROM itzg/minecraft-server:latest

# Set environment variables for NeoForge
ENV TYPE=NEOFORGE
ENV VERSION=1.21.1
ENV NEOFORGE_VERSION=latest
ENV EULA=TRUE

# Copy your local mods folder into the container
COPY mods /mods

# Expose the default Minecraft port
EXPOSE 25565
