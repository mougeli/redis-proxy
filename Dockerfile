FROM node
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY ./ /app
RUN npm install

ENTRYPOINT ["node", "/app/server.js"]
