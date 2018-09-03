  resource "aws_key_pair" "deployer" {
  key_name   = "public_key_name"
  public_key = "public key with ssh-rsa, context, user ex: ssh-rsa whaterver user"
  }