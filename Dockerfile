# update .ssh/authorized_keys
# docker build -t apfmx-installer .
# docker tag apfmx-installer kimcharli/appformix-installer
# docker push kimcharli/appformix-installer

FROM kimcharli/apfmx-installer-base:01

LABEL maintainer="kimcharli@gmail.com"

WORKDIR /root
COPY .ssh /root/.ssh

#ENV NOTVISIBLE "in users profile"
#RUN sh setup.sh
RUN chmod 600 .ssh/id_rsa && chmod 600 .ssh/authorized_keys

EXPOSE 22

#CMD ["/usr/sbin/sshd", "-D"]
ENTRYPOINT ["/usr/sbin/sshd", "-D"]

