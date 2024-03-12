variable "ec2_ami" {
    type = map

  default = {
    eu-west-2 = "ami-0cd59ecaf368e5ccf"
   }
   
 }
variable "region" {
  default = "eu-west-2"
}

variable "instance_type" {
  default = "t2.micro"
}
