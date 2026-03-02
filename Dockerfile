# Step 1: Use a lightweight Nginx image
FROM nginx:stable-alpine

# Step 2: Set the working directory to Nginx html directory
WORKDIR /usr/share/nginx/html

# Step 3: Remove default Nginx static assets
RUN rm -rf ./*

# Step 4: Copy your static files from the repo to the container
# This assumes your website files are in the root of your repo.
# If they are in a folder like 'dist' or 'public', change the first '.' to that folder name.
COPY . .

# Step 5: Expose port 80
EXPOSE 80

# Step 6: Start Nginx
CMD ["nginx", "-g", "daemon off;"]
