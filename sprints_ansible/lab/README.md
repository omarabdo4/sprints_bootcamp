- description

This ansible playbook is to install nexus

- steps to run playbook :
    > add your host in the inventory file
    > generate a private key and add it to the host's authorized keys
    > assuming that the private key file is named "nexus_ansible.pem" run the following command "ansible-playbook -i inventory --private-key nexus_ansible.pem nexus.yaml"