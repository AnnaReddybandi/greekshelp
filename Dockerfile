# Use Nginx to serve static files
FROM nginx:alpine

# Copy HTML and CSS files to Nginx default folder
COPY . /usr/share/nginx/html

EXPOSE 80

