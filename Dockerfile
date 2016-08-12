FROM busybox:latest
ENV version=1.2.12

ADD https://github.com/mumble-voip/mumble/releases/download/${version}/murmur-static_x86-${version}.tar.bz2 /opt/
RUN bzcat /opt/murmur-static_x86-${version}.tar.bz2 | tar -x -C /opt -f - && \
    rm /opt/murmur-static_x86-${version}.tar.bz2 && \
    mv /opt/murmur-static_x86-${version} /opt/murmur
COPY murmur.ini /etc/murmur.ini

EXPOSE 64738/tcp 64738/udp
ENTRYPOINT ["/opt/murmur/murmur.x86", "-fg", "-v"]
CMD ["-ini", "/etc/murmur.ini"]
