variable "secret_id" {
  default = "Your Access ID"
}

variable "secret_key" {
  default = "Your Access Key"
}

variable "region" {
  description = "The location where instacne will be created"
  default     = "ap-hongkong"
}

variable "password" {
  default = "password123"
}

variable "cidr_pods" {
  default = "10.98.0.0/16"
}


variable "cidr_services" {
  default = "10.99.0.0/16"
}
