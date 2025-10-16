variable "instances" {
    # default = [ "mongodb", "redis", "mysql", "rabbitmq", ]
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.micro"
        rabbitmq = "t3.micro"
    }
}

variable "zone_id" {
    default = "Z04762511YRI8TCYP5ZSP"
}

variable "domain_name" {
    default = "manidevops.fun"
}