variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  default = "~/.ssh/id_rsa"
}

variable "key_name" {
  default = "example-key"
}

variable "tags" {
  type = map
  default = {
    Terraform = true
  }
}
