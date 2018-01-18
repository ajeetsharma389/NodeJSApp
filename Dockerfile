FROM google/nodejs
MAINTAINER Ajeet

WORKDIR /app
ADD package.json /app/
#ADD . /var/www/srv

#WORKDIR /var/www/srv

RUN npm install
ADD . /APP
EXPOSE 8000

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]