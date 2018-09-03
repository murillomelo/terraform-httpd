
provider "aws" {
  access_key = "<your access key here!!>"
  secret_key = "<your secret key here!!>"
  region     = "<yor region here!!>"
}

resource "aws_instance" "Lab" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name   = "<key name>"
  security_groups = ["${var.name}-sg"]
  tags {
    Name = "${var.name}"
    Environment = "${var.environment}"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo service docker start",
      "docker run -dit --name my-apache-app -p 8080:80 httpd:latest",
    ]

      
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("absolute path of your key ex: /home/myser/.ssh/id_rsa")}"
      agent       = true
      timeout     = "1m"
    }
  }
}