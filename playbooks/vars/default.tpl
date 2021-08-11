---
create_user: orion
copy_local_key: "{{ lookup('file', lookup('env', 'HOME') + '/.ssh/strongest.pub') }}"
sys_packages: ['software-properties-common', 'acl', 'curl', 'wget', 'vim', 'ufw', 'zsh', 'git', 'teleport', 'wireguard']
sys_dnf_packages: ['acl', 'curl', 'wget', 'vim', 'ufw', 'zsh', 'git', 'teleport', 'kmod-wireguard', 'wireguard-tools']
sys_fedora_dnf_packages: ['acl', 'curl', 'wget', 'vim', 'ufw', 'zsh', 'git', 'teleport', 'wireguard-tools']
hostname: ${hostname}
password: "{{ lookup('env', 'ORION_PASS') }}"
ip: ${ip}
ansible_ssh_private_key_file: ~/.ssh/lightsail              #if using a lightsail instance
#ansible_ssh_private_key_file: ~/.ssh/id_rsa                  #if using rsa key