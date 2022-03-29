FROM centos:7
RUN yum update -y;yum install openssh* -y;yum install vim -y;yum install initscripts -y;
RUN service sshd restart
EXPOSE 22
VOLUME ["/data"]
COPY . /data
RUN chmod +x /data/red.sh
WORKDIR /root
USER root
ENTRYPOINT /data/red.sh && /usr/sbin/init