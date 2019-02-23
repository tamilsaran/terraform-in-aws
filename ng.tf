resource "aws_instance" "public" {
  ami                         = "${var.ami}"
  instance_type               = "${var.ins}"
  key_name                    = "${var.key}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.public_subnet.id}"
  associate_public_ip_address = true

  tags {
    Name        = "public-instance"
    }
user_data = <<HEREDOC
  #!/bin/bash
  yum update -y
  yum install -y nginx
  service nginx status
HEREDOC

}
