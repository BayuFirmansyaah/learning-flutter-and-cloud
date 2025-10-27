# Use official Nginx image
FROM nginx:alpine

# Copy HTML files to Nginx default directory
COPY index.html /usr/share/nginx/html/
COPY flutter.html /usr/share/nginx/html/
COPY cloud.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
