# Windows Ansible Test Environment

## Prerequisites

- [Chocolatey](https://chocolatey.org/install) is installed

## Setup

1. Run `setup.ps1` via admin PowerShell

2. Setup VM or import the provided OVA file. If setting up your own VM be sure to edit the ansible credentials in inventory.ini. Steps to import the OVA are outlined below
> [!TIP]
>The following steps are optional. The OVA is a 20GB file and takes a long time to download, but is provided for convenience. You can also create your own Windows 11 vm. Just be sure your VM allows connections from your docker container over port 5985.

Import the [Windows 11 OVA]() file into VMware Workstation (This will be replaced with a [Packer](https://www.packer.io/) build in the future.):
   - You can simply drag and drop the OVA into VMware Workstation
   - When prompted for an encryption key, you can enter anything you like
   - The login for the VM is Username: `Omni` Password: `Omni`

3. Get the IP address of the VM and replace the IP address in `inventory.ini`
    - IP can be retrieved using ```ipconfig```

4. Add playbooks or roles to be tested to the appropriate folders

## Usage

1. Run `run.ps1`

2. Run Ansible commands to test playbooks or roles. For example:
   ```ansible-playbook -i inventory.ini playbooks/deploy_test_file.yml```

3. When finished simply type ```exit```
> [!CAUTION]
>This environment is not secure whatsoever and should never be exposed to the public internet under any circumstances. This environment is for local testing purposes only.
