# Apigee Private Cloud Accelerator

## Introduction
This repository contains a set of Ansible roles and playbooks to manage the installation, 
configuration and maintenance of Private Cloud across multiple environments. These playbooks 

## Quick Start: Usage Overview
The use of this framework is composed of the following steps:

1. Install git, rsync, tree and pip. Assuming you are 


    sudo yum install -y git, rsync, tree, python-pip
    sudo pip install ansible google-auth

1. Clone this repository to `~/apigee-opdk-accelerator`.


    git clone git@github.com:apigee/ansible-opdk-accelerator.git ~/apigee-opdk-accelerator
    
1. [Setup](setup#usage-instructions) an Ansible control server and workspace.
1. Configure [Ansible and the Ansible inventory](README-ansible-configuration.md).
1. Please update [credentials](README-credentials.md) and license.  
1. Please review and update the runtime [attributes](README-runtime-attributes.md) as needed. Update common installation 
attributes like `opdk_version` that is stored in `~/.apigee/custom-properties.yml`.
1. Use `ansible-playbook` to carry out an activity from either the [installations](installations), [infrastructure](infrastructure) or [post-installation](post-installation) folders.

<!-- BEGIN Google How To Contribute -->
# How to Contribute

We'd love to accept your patches and contributions to this project. Please review our [guidelines](CONTRIBUTING.md).
<!-- END Google How To Contribute -->
<!-- BEGIN Google Required Disclaimer -->

# Not Google Product Clause

This is not an officially supported Google product.
<!-- END Google Required Disclaimer -->
