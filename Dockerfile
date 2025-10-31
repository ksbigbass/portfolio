# Use a lightweight Nginx base image
FROM nginx:alpine

# Copy the local index.html file into the Nginx web root directory
COPY index.html /usr/share/nginx/html/index.html
COPY john_henderson_application_security_engineer.pdf /usr/share/nginx/html/john_henderson_application_security_engineer.pdf

# Expose port 80 (Nginx's default HTTP port)
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]