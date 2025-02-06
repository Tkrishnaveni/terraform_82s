resource "aws_instance" "this" {
  ami = local.ami
  vpc_security_group_ids = local.vpc_id
  instance_type= local.instance_type
  tags ={
    name = local.name
    }
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
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
}
 tags = {
    Name = "allow_tls"
  }

}


