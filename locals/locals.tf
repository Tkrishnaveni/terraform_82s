locals{
    ami  = data.aws_ami.join_devops.id
    instance_type = "t3.micro"
    vpc_id = [aws_security_group.allow_tls.id]
     name = "${var.project}-${var.component}-${var.environment}"
}
