variable "name" {
  default = ""
}
variable "instance_keypairkey" {
      description = "Instance key-pair that need to be associated with EC2 Instance"
      type = string
      default = "jenkin2"
    }