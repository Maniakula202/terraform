# img_id: "ami-09c813fb71547fc4f"
# sg_id: "sg-0d7d38fd2dd9739a0"
# zone_id: "Z04762511YRI8TCYP5ZSP"
# domain_name: "manidevops.fun"


variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "egress_from_port" {
    type = number
    default = 0
}

variable "ingress_to_port" {
    type = number
    default = 0
}

variable "ingress_from_port" {
    type = number
    default = 0
}

variable "egress_to_port" {
    type = number
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}

variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "tags" {
    type = map
    default = {
        Name = "terraform"
        Terraform = "true"
    }
}