variable "password" {
  default = ""
}

variable "public_ip" {
  default = ""
}

variable "private_ip" {
  default = ""
}

variable "user" {
  default = "ubuntu"
}

variable "server_name" {
  default = "k3s"
}
variable "cidr_pods" {
    default = "10.42.0.0/16"
}

variable "cidr_services" {
    default = "10.43.0.0/16"
}
