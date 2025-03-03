module "ec2-test" {
  source = "../terraform-aws-ec2"
  instance_type = "t3.small"
  user_data = file("jenkins.sh")
  tags = {
    Name = "jenkins"
    environment = "test"
  }
}
