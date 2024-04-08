# UniversalJenkinsInstaller

`UniversalJenkinsInstaller` is an Ansible playbook that automates the installation of Jenkins on various Linux distributions, including Debian/Ubuntu, Fedora, and Red Hat/Alma/Rocky. With added Docker support, this playbook ensures a seamless and secure setup across different environments, tailored to the needs of your system.

## Features

- Supports multiple Linux distributions and Docker containers.
- Automates the installation of Jenkins and its prerequisites.
- Configures Jenkins to run under a specific user and group with restricted shell access.
- Ensures that Jenkins starts at boot time, whether installed natively or within Docker.

## Prerequisites

- An Ansible control machine (version 2.9+).
- Target servers running Debian/Ubuntu, Fedora, or Red Hat/Alma/Rocky, or a Docker environment.
- SSH access to target servers or Docker daemon.
- Sudo privileges on target servers or Docker.

## Installation Options

### Native Linux Installation

1. Clone the repository:

    ```
    git clone https://github.com/fevzisahinler/UniversalJenkinsInstaller.git
    ```

2. Navigate to the project directory:

    ```
    cd UniversalJenkinsInstaller
    ```

3. Configure your inventory by editing `inventory/hosts.ini`:

    ```ini
    [jenkins]
    jenkins-server-01 ansible_host=192.168.1.10
    jenkins-server-02 ansible_host=192.168.1.11
    ```

4. Run the playbook specific to your Linux distribution (Debian/Ubuntu, Fedora, Red Hat/Alma/Rocky):

    ```
    ansible-playbook -i inventory/hosts.ini playbooks/<distro>.yml
    ```

### Docker Installation

1. Ensure Docker is installed on your server. If not, the playbook can handle the Docker installation.

2. If Docker is installed, run the Docker-specific playbook:

    ```
    ansible-playbook -i inventory/hosts.ini playbooks/jenkins-docker.yml
    ```

3. If Docker is not installed, the playbook will identify your Linux distribution and execute the necessary steps to install Docker before deploying Jenkins.


---

**Note**: Replace `yourusername` with your actual GitHub username and `<distro>` with your specific Linux distribution (debian-ubuntu, fedora, redhat).

Now you can use this Markdown as part of your repository's README to guide users through the installation process of Jenkins using Ansible, both natively on Linux and within Docker containers.
