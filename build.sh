#!/usr/bin/env bash

function print_good () {
   echo -e "\x1B[01;32m[+]\x1B[0m $1"
}

function print_error () {
   echo -e "\x1B[01;31m[-]\x1B[0m $1"
}

function print_warning () {
   echo -e "\x1B[01;33m[-]\x1B[0m $1"
}

function print_info () {
   echo -e "\x1B[01;34m[*]\x1B[0m $1"
}

playbook="ansible-playbook"
galaxy="ansible-galaxy"

# check pipx
if [ $(command -v "pipx") ]; then
    print_good "pipx installed"
else
    print_error "Try: apt install pipx"
    exit 2
fi

# check ansible
if [ $(command -v ${playbook}) ] && [ $(command -v ${galaxy}) ]; then
    print_good "ansible installed"
else
    print_error "Not found $playbook or $galaxy"
    print_error "Try: pipx install ansible"
    print_error "Try: source ~/.local/share/pipx/venvs/ansible/bin/activate"
    exit 2
fi

# ansible-playbook install
if [ -f "requirement.yml" ] || [ -f "main.yml" ]; then
    print_info "install ansible"
    ${galaxy} install -r requirement.yml
    ${playbook} main.yml -K
else
    print_error "Not found: requirement.yml or main.yml"
    exit 2
fi

# check firefox
if [ $(command -v "firefox") ]; then
    print_good "firefox installed"
else
    print_error "Try: apt install firefox"
    exit 2
fi

# install firefox addon
if [ -e "addon" ]; then
    print_info "Install addon"
    firefox "addon/*.xpi"
else
    print_error "Not found: addon directory"
    exit 2
fi