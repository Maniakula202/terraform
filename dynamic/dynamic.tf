resource "aws_security_group" "allow-strict-control" {
    name   = "allow-strict-control"

    dynamic egress {
        for_each = toset(var.required_ports)
        content {
            from_port        = egress.value # from port 0 to to port 0 means all ports
            to_port          = egress.value
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"] # internet
        }
    }

    dynamic ingress {
        for_each = toset(var.required_ports)
        content {
            from_port        = ingress.value # from port 0 to to port 0 means all ports
            to_port          = ingress.value
            protocol         = "tcp" # -1 means all protocols
            cidr_blocks      = ["0.0.0.0/0"] # internet
        }
    }

    tags = {
        Name = "allow-strict-control"
    }
}