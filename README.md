<!-- [![Farsi](https://img.shields.io/badge/Language-Fa-brown.svg?style=flat-square)](https://github.com/younesmod/custom-shell/blob/main/README.fa.md) -->
<!-- [![MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=flat-square)](https://github.com/younesmod/custom-shell/blob/main/LICENSE) -->
[![Unix](https://img.shields.io/badge/Compatible-Unix-darkblue.svg?style=flat-square)](https://github.com/younesmod/custom-shell/blob/main/LICENSE)
[![Linux](https://img.shields.io/badge/Compatible-Linux-darkgreen.svg?style=flat-square)](https://github.com/younesmod/custom-shell/blob/main/LICENSE)
# 🚀 Custom Shell Setup
<div align="center">

<!-- ![Linux](https://img.shields.io/badge/Platform-Linux-blue.svg) -->
[![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![ZSH](https://img.shields.io/badge/ZSH-F15A24?style=for-the-badge&logo=zsh&logoColor=white)](https://ohmyz.sh/)

Ansible project for rapid and automated DevOps server provisioning.
</div>

## <b>Table Of Content</b>
- Project Overview
- Quick Start
- Usage
- Project Structure
- Notes
- Sources

### <b>🎯 Project Overview</b>

This project is a collection of Ansible Playbooks for automated and standardized Linux server setup in DevOps environments. Using this project, you can prepare your servers for service in minimal time.

- Prepating-Server: Doing update and upgrade from apt Package Manager
- Docker: Installing Docker and its utilities from apt Package Manager - Add user to Docker user group - Start and enable Docker service
- Adding Soon ...


### <b>🚀 Quick Start</b>

1. Clone the Repository
```bash
git clone https://github.com/younesmod/custom-shell.git
cd ansible-devops-foundation
```

2. Configure Servers
```bash
# Copy configuration file
cp vars/server_vars.example.yaml vars/server_vars.yaml

# Edit settings
nano vars/server_vars.yaml
```

3. Run Playbooks
```bash
# Run all playbooks
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/*

# Or run individually
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/docker.yml
```

### <b>🎮 Usage</b>
- Full Setup:
```bash
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/*
```
- Step-by-Step Execution:
```bash

# 1. Docker Installation
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/docker.yaml

# 2. Security Hardening
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/preparing.yaml

# 3. Security Hardening
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/hardening.yaml

# 4. Monitoring Setup (in-progress)
ansible-playbook -i inventory/host.yaml -e @vars/server_vars.yaml playbook/monitoring.yaml
```

### <b>📁 Project Structure</b>
```text
ansible-devops-foundation/
├── inventory/
│   └── host.yaml                # Inventory file
├── playbook/
│   ├── preparing.yaml           # Preparing setup
│   ├── hardening.yaml           # Security hardening
│   ├── harden-ssh.yaml          # SSH hardening
│   ├── harden-os.yaml           # OS hardening
│   ├── docker.yaml              # Docker installation
│   ├── nginx.yaml               # Nginx setup + Nginx Hardening 
│   ├── nginx-hardening.yaml     # Nginx Hardening
│   ├── nginx-setup.yaml         # Nginx setup
│   ├── php-setup.yaml           # Php setup
│   └── setup-node.yaml          # Preparing + Docker
├── vars/
│   └── server_vars.yaml         # Main variables
├── roles/                       # Ansible roles
│   ├── docker/                  # Docker role
│   │   └── ...
│   ├── preparing-server/        # Preparing role
│   │   └── ...
│   ├── nginx/                   # Nginx role
│   │   └── ...
│   ├── php/                     # Php role
│   │   └── ...
│   ├── os-hardening/            # OS-Hardening role
│   │   └── ...
│   ├── ssh-hardening/           # SSH-Hardening role
│   │   └── ...
│   └── nginx-hardening/         # Nginx-Hardening role
│       └── ...
├── .gitignore
├── ansible.cfg                  # Ansible config
├── LICENSE                      # License file
├── README.fa.md
└── README.md
```
### <b>📝 Notes</b>

- Preparing-Server
    - FreeBSD and OpenBSD needs python on target OS.
    - Arch Linux may need some extra tweaks.
    - For SUSE needs to activate some of repositories.
    - Packages are optimized for each distros.
- Docker
    - OpenBSD DOESN'T support docker natively.
    - FreeBSD does support docker but there are some limitations.
    - RedHat/CentOS 8+ uses `dnf` package manager instead of `yum`.
    - It's better to use official repository for production areas.
    - ‌Be sure that the `$user` is existed on OS.