FROM centos:latest
MAINTAINER from www.beyondspider.com by admin (admin@beyondspider.com)

ENV TIME_ZONE Asia/Shanghai
RUN yum install -y openssh-server net-tools && \
	yum clean all && \
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && \
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_ecdsa_key && \
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_ed25519_key && \
	ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

RUN echo "root" | passwd --stdin root

ADD run.sh /run.sh
RUN chmod 777 /run.sh
EXPOSE 22
CMD ["/run.sh"]
