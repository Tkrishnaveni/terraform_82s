variable "instances"{
       default = {
          mysql = "t3.small"
          frontend = "t3.micro"
          backend = "t3.micro"
       }
}

variable "zone_id" {
    default = "Z011843520P6WY33GFWTL"
}

variable "domain_name" {
    default = "kittudevops.shop"
}