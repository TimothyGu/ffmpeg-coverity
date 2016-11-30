FROM ffmpeg/build

ADD coverity_tool.tgz /opt
RUN mv /opt/cov* /opt/coverity_tool

ADD coverity-run /usr/local/bin
RUN chmod +x /usr/local/bin/coverity-run

CMD ["coverity-run"]
