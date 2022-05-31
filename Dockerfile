FROM arm64v8/node:16

ADD . /
RUN cd balanceofsatoshis && npm i -g balanceofsatoshis

WORKDIR /app/
RUN npm install --global serve
RUN npm install --global serve
RUN npm install --global xterm
ADD ./homepage.html ./index.html

WORKDIR /

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
ADD assets/utils/check-web.sh /usr/local/bin/check-web.sh
RUN chmod +x /usr/local/bin/check-web.sh

WORKDIR /balanceofsatoshis/

EXPOSE 80

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]