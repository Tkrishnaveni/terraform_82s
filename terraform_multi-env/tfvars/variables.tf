variable "instances"{
       default = ["backend" ,"mysql", "frontend"  ]
               
}

variable "project"{
    default = "expense"

}
variable  "environment"{

}
variable "zone_id" {
    default = "Z011843520P6WY33GFWTL"
}

variable "domain_name" {
    default = " kittudevops.shop "
}