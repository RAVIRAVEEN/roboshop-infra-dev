variable "common_tags" {
    type = map
    default = {
        project = "roboshop"
        envinorment = "dev"
        terraform = "true"
    }
}

variable "tags" {
  default = {
    component ="cart"
  }
  
}
  variable "zone_name" {
    default = "devopsrank.online"
    
  }

variable "project_name" { 
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "rule_priority" {
  default = 40
  
}

variable "iam_instance_profile" {
  default = "ec2roleforshellscript"
  
}