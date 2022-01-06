resource "aws_instance" "foo" {
    ami = "ami-09b333b07b596e8d1" # data.aws_ami.aws_ec2_ami.id
        instance_type = "t2.micro"
        tags = {
        Name = "ec2-dev"
        env = "dev"
    }

    
}

    output "public_ip_ec2" {
        description = "Public IP of ec2-instance"
        value = aws_instance.foo.public_ip
    }
    output "public_dns_ec2" {
        description = "Public DNS details"
        value = aws_instance.foo.public_dns
    }

