FROM gordons/qpid-proton-master:836df5f4
ADD qpid-dispatch-image.tar.gz /
RUN dnf -y install gettext hostname iputils
ARG version=latest
ENV VERSION=${version}

EXPOSE 5672 55672 5671
CMD ["/sbin/qdrouterd", "-c", "/etc/qpid-dispatch/qdrouterd.conf"]
