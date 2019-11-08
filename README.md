POC - Déployer en 5 min un blog Ghost 3 chez Scaleway !

*Article - [https://pg3.io/blog/5min-ghost-scaleway/](https://pg3.io/blog/5min-ghost-scaleway/)*

# Prérequis
* Terraform - [install](https://learn.hashicorp.com/terraform/getting-started/install.html)
* Ansible version 2.8 - [install](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
* Compte Scaleway et un API Token - [documentation (en)](https://www.scaleway.com/en/docs/generate-an-api-token/)

# Terraform
Update variables
* IP_ADMIN
```
terraform init
terraform apply
```

# Ansible
Update variables
* SCALEWAY_IP_PUBLIC
* LETSENCRYPT_EMAIL
```
ansible-playbook -u root -i IP_PUBLIC_SCALEWAY main.yml
```

# License

![Apache 2.0 Licence](https://img.shields.io/hexpm/l/plug.svg)

This project is licensed under the [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0) license - see the [LICENSE](LICENSE) file for details.

# Author Information
This role was created in 03/10/2019 by [PG3](https://pg3.io)
