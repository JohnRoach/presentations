FROM lloydbenson/docker-centos-7-node
MAINTAINER Lloyd Benson <lloyd.benson@gmail.com>
RUN mkdir /apps/presentations
ADD . /apps/presentations
RUN cd /apps/presentations && npm install --production
EXPOSE 8082
CMD [ "npm", "start" ]
