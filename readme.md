# My Ansible Collection

This repository contains a collection of my useful Ansible playbooks, roles, and tasks that I've created and use for personal or work-related automation. The goal of this collection is to simplify and streamline various automation tasks using Ansible.

## Contents

- **Playbooks**: High-level automation tasks written using Ansible.
- **Roles**: Organized tasks, templates, and variables that can be reused across different playbooks.
- **Tasks**: Specific automation tasks grouped by functionality.

## Getting Started

To get started with this collection, you'll need to have Ansible installed on your system. If you don't have it yet, follow the [official Ansible installation guide](https://docs.ansible.com/ansible/latest/installation_guide/index.html).

### Clone the Repository

```bash
git clone https://github.com/your-username/my-ansible-collection.git
cd my-ansible-collection
```

## How to Create an Inventory File in Ansible

An **inventory file** in Ansible contains the list of all the servers you want to manage. You need to create this file to specify the server addresses, connection details, and any necessary additional variables. This file is crucial for running playbooks on your servers.

### Steps to Create the Inventory File

1. **Create the Inventory File**

   First, create a new file named `inventory` (or another name of your choice) in the root of your project directory.

2. **Add Server Information**

   In this file, define your servers under a group, like `web_servers`. Use the following format for each server:

For example, you can define the `web_servers` group as follows:

```ini
[web_servers]
*.*.*.* ansible_user=joseph name=SwedenServer # Sweden server
```

### Running a Playbook with a Custom Inventory File

You can use the following command to run a playbook with a custom inventory file:

```bash
ansible-playbook -i ./inventory/vpn-inventory.ini hiddify-report/get_reports.yml
```
