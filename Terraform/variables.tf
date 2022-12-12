variable "name" {
  default = ""
}
variable "instance_keypair" {
      description = "Instance key-pair that need to be associated with EC2 Instance"
      type = string
      default = "jenkins2"
    }