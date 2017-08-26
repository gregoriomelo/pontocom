# Provisioning of stuff under gregoriomelo.com

## What?

It sets up the following services as Docker containers:

- My personal blog
- Gitlab
- Gitlab Runner

With nginx as reverse proxy and Let's Encrypt for the SSL certificates.

## Requirements

Ansible (>= 2) and an SSH key pair

## Running

```bash
REMOTE_USERNAME=<your_username> SETUP_FROM=`pwd` SETUP_TO=<the_folder_where_everything_will_be_stored> SSH_KEY_PATH=<path_to_public_key> ansible-playbook -i '<hostname>' --private-key=<path_to_ssh_private_key> -u root -e 'ansible_python_interpreter="/usr/bin/env python3"' provisioning/playbook.yml
```

## Caveats

`-e 'ansible_python_interpreter="/usr/bin/env python3"'` your target destination runs Python 3 and is missing Python 2

The command above assumes you have access to root with a private SSH key. Remove `--private-key` if that's not the case

Use another user by changing `-u root`
