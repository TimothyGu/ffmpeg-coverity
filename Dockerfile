FROM ffmpeg/build

ADD coverity_tool.tgz /opt

ADD coverity-run /usr/local/bin
RUN chmod +x /usr/local/bin/coverity-run

CMD ["coverity-run"]
