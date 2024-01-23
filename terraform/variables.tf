variable "ssh_key_name" {
  description = "The name of the SSH key pair to use"
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
