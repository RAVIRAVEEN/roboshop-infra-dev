variable "cidr_block" {
  default = "10.0.0.0/16"
  }

variable "common_tags" {
    type = map
    default = {
        project = "roboshop"
        envinorment = "dev"
        terraform = "true"
    }
  
}
variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "envinorment" { 
    default = "dev"
  
}
variable "ig_tags" {
  default = {}
}

variable "public_subnet_tags" {
    default = {}
  
}

variable "public_subnet_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]

  
}

variable "private_subnet_cidr" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]

  
}

variable "database_subnet_cidr" {
    default = ["10.0.21.0/24", "10.0.22.0/24"]

}

variable "database_subnet_tags" {
  default = {}
}

variable "is_peering_require" {
  default = true
  
}