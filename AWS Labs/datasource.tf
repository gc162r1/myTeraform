data aws_ami "aws_ec2_ami" {
    owners = ["amazon","microsoft"]
    most_recent = true
    filter {
      name = "name"
      values = ["ami-*"]
    }
 # filter {
 #   name = "architecture"
 #   values = ["x86_64"]
#  }
  
}
