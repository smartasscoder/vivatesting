# Use the official nginx image as the base
FROM nginx:latest

# Remove the default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML and CSS files to nginx's directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
