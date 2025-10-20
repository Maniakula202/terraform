locals {
    instance_type = "t3.micro"
    common_name = "${var.project}-${var.environment}"
    tags = merge(
      var.common_tags, 
      {
        Name = "${local.common_name}-local-demo"
      }
    )
}