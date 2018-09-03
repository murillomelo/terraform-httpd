variable "name" {
  description = "Nome of the resource"
  default = "your-lab-name"
}
variable "environment" {
  description = "Env of the APP"
  default = "your-env-name"
}
variable "vpc_id" {
    description = "your vpc id"
    default = ""
}

variable "ami" {
    description = "AMI (disk image)"
    default = "ami-00129b193dc81bc31"
}

variable "instance_type" {
    description = "Instance Type"
    default = "t2.micro"
}

variable "key_name" {
    description = "KeyPair"
    default = "your-keypair-name"
}

variable "security_groups" {
    description = "SG"
    default =  "your-sg-name"
    
}

