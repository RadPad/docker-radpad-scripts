FROM alpine

ADD run.sh /
ADD radpad.sh /

VOLUME /script_dir
CMD ["/run.sh"]
