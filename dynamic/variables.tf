# img_id: "ami-09c813fb71547fc4f"
# sg_id: "sg-0d7d38fd2dd9739a0"
# zone_id: "Z04762511YRI8TCYP5ZSP"
# domain_name: "manidevops.fun"


variable "required_ports" {
    default = [22,80,8080]
}