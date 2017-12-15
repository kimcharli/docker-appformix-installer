FROM kimcharli/appformix-installer-base:0.0.1

LABEL maintainer="kimcharli@gmail.com"

WORKDIR /root
RUN ssh-keygen -f ~/.ssh/id_rsa -t rsa -N ''

COPY ssh-config /root/.ssh/config
COPY public_keys /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
RUN echo '' >> /root/.ssh/authorized_keys
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

EXPOSE 22

ENTRYPOINT ["/usr/sbin/sshd", "-D"]

