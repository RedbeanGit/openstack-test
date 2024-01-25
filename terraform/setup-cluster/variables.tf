variable "ssh_key_path" {
  description = "The path to the SSH public key to use"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "image_name" {
  description = "The name of the image to use for the server"
  type        = string
  default     = "Debian-12"
}

variable "flavor_name" {
  description = "The name of the flavor to use for the server"
  type        = string
  default     = "m1.small"
}

variable "public_network_name" {
  description = "The ID of the external network for public access"
  type        = string
  default     = "public"
}

variable "nb_master" {
  description = "The number of master nodes"
  type        = number
  default     = 1
}

variable "nb_worker" {
  description = "The number of worker nodes"
  type        = number
  default     = 2
}

variable "kubeconfig_path" {
  description = "The path to the kubeconfig file to create"
  type        = string
  default     = "../outputs/kubeconfig.yaml"
}

variable "ip_output_path" {
  description = "The base filename for the IP files"
  type        = string
  default     = "../outputs/ips.yaml"
}
