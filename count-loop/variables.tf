variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", ]
}

variable "zone_id" {
    default = "Z04762511YRI8TCYP5ZSP"
}

variable "domain_name" {
    default = "manidevops.fun"
}