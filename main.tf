provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myEC2" {
  ami           = "ami-0c55b159cbfafe1f0"  # Update with your desired AMI
  instance_type = "t2.micro"
}


output "instance_ip" {
  value = aws_instance.myEC2.public_ip
}
