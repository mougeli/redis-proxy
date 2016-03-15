FROM node
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY ./app/package.json /app/package.json
WORKDIR /app
RUN npm install --save
COPY ./app /app
# 运行模式
ENV DEBUG false
# 这个容器的角色
ENV ROLE consumer
EXPOSE 3000
ENTRYPOINT ["node", "/app/main.js"]
