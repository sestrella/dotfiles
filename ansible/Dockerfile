FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible

COPY . /root/ansible
WORKDIR /root/ansible

ENTRYPOINT ["ansible-playbook"]
CMD ["playbooks/bootstrap.yml", "--skip-tags", "docker"]
