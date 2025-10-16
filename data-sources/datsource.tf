data "aws_ami" "instances_ami" {
    most_recent = true
    owners      = ["973714476881"]

    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}


output "ami_id_check" {
    value = data.aws_ami.instances_ami.id  
}

data "aws_instance" "terraform" {
    instance_id = "i-01119cb56867cd952"
}

output "terraform_info" {
    value = data.aws_instance.terraform.public_ip
}