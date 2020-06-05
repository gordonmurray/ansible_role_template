# Ansible Role template

A template to use for an Ansible role, and run from a Docker container.

To avoid messing around installing Ansible or dependencies, run it from the Dockerfile with:

> docker build --pull --rm -f "Dockerfile" -t ansible:role "role"
