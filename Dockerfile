# syntax=docker/dockerfile:1.2
FROM traefik:v2.10

# Copy configuration files
COPY traefik.yml /etc/traefik/traefik.yml
COPY dynamic.yml /etc/traefik/dynamic.yml

# Expose ports
EXPOSE 80
EXPOSE 8080

# Command to run Traefik
CMD ["traefik"]
