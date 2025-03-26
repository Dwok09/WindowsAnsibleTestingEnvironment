# Windows Ansible Test Environment

## Prerequisites

- [Chocolatey](https://chocolatey.org/install) is installed

## Setup

1. Run `setup.ps1` via admin PowerShell
2. Import the [Windows 11 OVA]() file into VMware Workstation (This will be replaced with a [Packer](https://www.packer.io/) build in the future.):
> [!NOTE]
>This step is optional. The OVA is 20GB file and takes a long time to download, but is here for convience. You can also create your own Windows 11 vm. Just be sure to allow connections from your docker container over port 5985.


   - You can simply drag and drop the OVA into VMware Workstation
   - When prompted for an encryption key, you can enter anything you like
   - The login for the VM is Username: `Omni` Password: `Omni`
3. Get the IP address of the VM and replace the IP address in `inventory.ini`
    - IP can be retrieved using ```ipconfig```
4. Add playbooks or roles to be tested to the appropriate folders

## Usage

1. Run `run.ps1`
2. Run Ansible commands to test playbooks or roles. For example:
   ```bash
   ansible-playbook -i inventory.ini playbooks/deploy_test_file.yml
3. When finished simply type ```exit```