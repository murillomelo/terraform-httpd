# terraform-httpd
a terraform script to create aws infrastructure with ami image running docker and starting httpd on port 8080 automatically

# To run the following script please make sure of the variables and parameters are filled in correctly

# in the ec2.tf it will be necessary fill the followings fields
  > access_key
  > secret_key
      PS, we can set this on environment variables like
      export AWS_ACCESS_KEY_ID="access_key_here"
      export AWS_SECRET_ACCESS_KEY="secret_key_here"
  > region
  > key_name (name of your public key)
  > private_key (location of yout private key)
  
 # in the key.tf will be necessary fill the filed keyname(the same of the ec2.tf-key_name) and public_key (your public key)

# in the variables.key the following fields are:
    name > tag name of your resource
    environment > tag of environment
    vpc_id > vpc of the resource
    ami > disk image for your project
    instance_type > conf of the instance ex: (t2.micro = 1mem 2cpu)
    key_name > your keypair name
    security_groups > security group of yout resources
    
 # in the sg.tf only fill in if there are to be more rules
