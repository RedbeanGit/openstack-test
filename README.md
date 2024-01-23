# OpenStack test

## Requirement

You first need to add your own ssh key pair to OpenStack.

## Deploy using Heat

```
$ cp example.env .env
# Edit .env
$ source .env
$ openstack stack create -t heat/stack.yaml my-stack --parameter "ssh_key_name=my-ssh-key"
```

# Deploy using Terraform

This repository provides 2 examples of Terraform configuration:

- `terraform/simple-vm`: a simple VM with a floating IP
- `terraform/kubernetes`: a Kubernetes cluster with 1 master and 2 workers

```
$ cp example.env .env
# Edit .env
$ source .env
$ cd terraform/kubernetes && terraform init && terraform apply
```
