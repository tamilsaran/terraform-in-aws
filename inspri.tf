resource "aws_instance" "private" {
  ami                         = "${var.ami}"
  instance_type               = "${var.ins}"
  key_name                    = "${var.key}"
  monitoring                  = true
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  subnet_id                   = "${aws_subnet.private_subnet.id}"

  tags {
    Name        = "private-instance"
    }
}



