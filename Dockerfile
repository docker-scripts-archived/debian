FROM debian:stretch
ENV container docker
RUN apt update && apt -y upgrade
RUN echo "resolvconf resolvconf/linkify-resolvconf boolean false" | debconf-set-selections
RUN apt -y install systemd resolvconf
RUN systemctl set-default multi-user.target
CMD ["/lib/systemd/systemd"]

### install other tools
#RUN apt -y install vim git wget curl unzip

