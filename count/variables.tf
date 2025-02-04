variable "instances"{
    type = list(string)
    default = ["mysql","backend","frontend"]
}

variable "zone_id" {
    default = "Z011843520P6WY33GFWTL"
}

variable "domain_name" {
    default = "kittudevops.shop"
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Environment = "dev"
    }
}