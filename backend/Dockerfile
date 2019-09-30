FROM node:12

RUN mkdir /var/www/

WORKDIR /var/www/

COPY . /var/www/

# RUN npm install -g nodemon
RUN npm install

RUN npm install pm2 -g

# Expose port
# EXPOSE 1337

CMD [ "pm2-runtime", "start", "pm2.json" ]