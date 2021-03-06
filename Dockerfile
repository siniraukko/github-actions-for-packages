# Your Dockerfile contents go here!
# Set correct port value
# CMD command specifies the instruction that
# is to be executed when a Docker container starts
# SED command is used as file editor
# For example searches for something and changes the value
FROM nginx:1.17
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
