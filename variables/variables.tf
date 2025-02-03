variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "i_type" {
    default = "t3.micro"
}

variable "ec2_tag" {
     type = map(string)
     default  = {
        project = "expense"
        component = "backend"
        environment = "dev"
        name = "expense-backend-dev"
     }
  }

  variable "from_port"{
    default = 22
  }

   variable "to_port"{
    
    default = 22
  }

   variable "protocol"{
    default = "tcp"
  }

   variable "cidr_block"{
    type = list(string)
    default = ["0.0.0.0/0"]
  }

  variable "sg_tags"{
   type = map(string)
    default = {
        name = "expense-backend-dev"
  }
  }