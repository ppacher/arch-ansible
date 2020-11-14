#!/usr/bin/env bash

set -x
set -e

TARGET=$1
ANSIBLE_USER=${ANSIBLE_USER:-$USER}

# remove the first argument (target)
shift

ansible-playbook -i ./hosts \
    --limit $TARGET         \
    --ask-vault-pass        \
    --ask-become-pass       \
    --ask-pass              \
    -u $ANSIBLE_USER        \
    $@                      \
    ./playbook.yml
