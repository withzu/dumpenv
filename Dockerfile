FROM busybox:stable-musl

COPY dump-env.sh /dump-env.sh
RUN chmod +x /dump-env.sh

CMD ["/dump-env.sh"]
