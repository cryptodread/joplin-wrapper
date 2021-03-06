FROM --platform=linux/arm64/v8 joplin/server:latest

ADD ./docker_entrypoint.sh /usr/local/bin/docker_entrypoint.sh
RUN chmod a+x /usr/local/bin/docker_entrypoint.sh
ADD assets/utils/check-web.sh /usr/local/bin/check-web.sh
RUN chmod +x /usr/local/bin/check-web.sh

EXPOSE 80 22300

ENTRYPOINT ["/usr/local/bin/docker_entrypoint.sh"]