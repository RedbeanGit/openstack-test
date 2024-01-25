variable "kubeconfig_path" {
  description = "The path to the kubeconfig file"
  type        = string
  default     = "../outputs/kubeconfig.yaml"
}

variable "auth_url" {
  description = "The OpenStack auth URL"
  type        = string
  default     = "https://162.38.112.10:13000"
}

variable "username" {
  description = "The OpenStack username"
  type        = string
  default     = "jdubois"
}

variable "password" {
  description = "The OpenStack password"
  type        = string
  default     = "0penst@ckIs@1l"
  sensitive   = true
}
