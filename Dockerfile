# Use Nginx base image
FROM nginx:alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY . /usr/share/nginx/html

# Rename your main HTML to index.html so Nginx serves it
RUN mv /usr/share/nginx/html/animatedLogin.html /usr/share/nginx/html/index.html

# Fix permissions
RUN chmod -R 755 /usr/share/nginx/html

# Expose port 80
EXPOSE 80

