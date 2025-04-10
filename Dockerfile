FROM fedora:40

WORKDIR /ansible

RUN mkdir -p ./playbooks

RUN dnf install -y ansible iputils python3-pip && \
    pip3 install pywinrm

COPY inventory.ini /ansible/inventory.ini
COPY playbooks/ /ansible/playbooks/
