all:
  hosts:
    ${testserver01}:
    ${testserver02}:
    ${testserver03}:
   
  children:
    pub:
     hosts:
       server01:
         ansible_port: 22
         ansible_host: ${testserver01}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
       server02:
         ansible_port: 22
         ansible_host: ${testserver02}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
       server03:
         ansible_port: 22
         ansible_host: ${testserver03}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
    pvt:
     hosts:
       testserver01:
         ansible_port: 22
         ansible_host: ${pvttestserver01}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
       testserver02:
         ansible_port: 22
         ansible_host: ${pvttestserver02}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
       testserver03:
         ansible_port: 22
         ansible_host: ${pvttestserver03}
         ansible_user: ubuntu
         ansible_ssh_private_key_file: /etc/ansible/2025key.pem
    pip:
     hosts:
       ${testserver01}:
       ${testserver02}:
       ${testserver03}: