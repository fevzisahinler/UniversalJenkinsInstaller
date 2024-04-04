# UniversalJenkinsInstaller

`UniversalJenkinsInstaller` is an Ansible playbook designed to automate the installation of Jenkins on various Linux distributions including Debian/Ubuntu, Fedora, and Red Hat/Alma/Rocky. This playbook ensures that Jenkins is set up with the necessary user and group configurations, making the installation process seamless and secure across different environments.

## Features

- Supports multiple Linux distributions.
- Automates the installation of Jenkins and its prerequisites.
- Configures Jenkins to run under a specific user and group with restricted shell access.
- Ensures that Jenkins starts at boot time.

## Prerequisites

Before you begin, ensure you have the following:

- A control machine with Ansible 2.9 or later installed.
- One or more target servers running Debian/Ubuntu, Fedora, or Red Hat/Alma/Rocky.
- SSH access to the target servers from the control machine.
- Sudo privileges on the target servers.

## Getting Started

To use `UniversalJenkinsInstaller`, follow these steps:

1. **Clone the repository**:

    git clone https://github.com/fevzisahinler/UniversalJenkinsInstaller.git

3. **Navigate to the project directory**:

    cd UniversalJenkinsInstaller


4. **Configure your inventory**:

Edit the `inventory/hosts.ini` file to include the IP addresses or hostnames of your target servers. For example:

hosts.ini
[jenkins]
jenkins-server-01 ansible_host=192.168.1.10
jenkins-server-02 ansible_host=192.168.1.11
