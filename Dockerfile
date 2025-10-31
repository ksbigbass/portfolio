    # Use a lightweight Nginx base image
    FROM nginx:alpine

    # Copy the local index.html file into the Nginx web root directory
    COPY index.html /usr/share/nginx/html/index.html

    # Expose port 80 (Nginx's default HTTP port)
    EXPOSE 80

    # Command to run Nginx in the foreground
    CMD ["nginx", "-g", "daemon off;"]