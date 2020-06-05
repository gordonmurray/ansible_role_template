# sudo apt install docker.io
# sudo systemctl enable --now docker
# sudo usermod -aG docker SOMEUSERNAME

FROM ubuntu:bionic

# Install prerequisities for Ansible
RUN apt-get update
RUN apt-get -y install python3 python3-nacl python3-pip libffi-dev

# Install ansible
RUN pip3 install ansible

# Copy your ansible configuration into the image
COPY . /ansible

WORKDIR /ansible

# Run ansible to configure things
RUN ansible-playbook playbook.yml