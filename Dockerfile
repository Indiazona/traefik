# syntax=docker/dockerfile:1.2
FROM traefik:v2.10

# Create necessary directories
RUN mkdir -p /etc/traefik

# Copy configuration files
COPY traefik.yml /etc/traefik/
COPY dynamic.yml /etc/traefik/

# Create acme.json with proper permissions
RUN touch /etc/traefik/acme.json && chmod 600 /etc/traefik/acme.json

# Expose ports
EXPOSE 80
EXPOSE 8080

# Command to run Traefik
CMD ["traefik"]
