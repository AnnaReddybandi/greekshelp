# Dockerfile
FROM nginx:alpine

# Remove default Nginx content (optional, but safer)
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

