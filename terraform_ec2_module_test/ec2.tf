module "ec2" {
    source = "../terraform-ec2-aws"
    sg_id = "sg-00397bd41905b6fbf"
    instance_type = "t3.large"

}
