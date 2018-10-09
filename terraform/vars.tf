variable "public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "key_name" {
  default = "example-key"
}

variable "tags" {
  type = "map"
  default = {
    Repo = "https://github.com/jpigree/terraform-ansible-example"
    Terraform = true
  }
}
