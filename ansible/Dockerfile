FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update && apt-get install -y ansible

RUN mkdir /root/ansible
WORKDIR /root/ansible

ENTRYPOINT ["ansible-playbook"]
CMD ["playbooks/bootstrap.yml"]
