resource "aws_instance" "this" {
  ami = var.ami_id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type= var.i_type
  tags = var.ec2_tag
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"


 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    

}
 ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_block
   
}
 tags = var.sg_tags

}


