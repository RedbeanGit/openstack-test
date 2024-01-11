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

```
$ cp example.env .env
# Edit .env
$ source .env
$ cd terraform && terraform init && terraform apply
```
