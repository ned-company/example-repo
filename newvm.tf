resource "aws_instance" "newvmtest"  {
  ami = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
  key_name = "nedkey"
  vpc_security_group_ids = [ "${aws_security_group.network.id}" ]
 tags = {
  Name = "heynewvm"
  }

}
