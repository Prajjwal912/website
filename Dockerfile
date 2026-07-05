# Use the official Nginx image
FROM nginx:alpine

# Remove the default Nginx web page
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into the Nginx web root
COPY index.html /usr/share/nginx/html/

# Expose HTTP port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
