variable "aws_access_key" {
  type        = string
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  description = "AWS Secret Key"
}

variable "key_pair_name" {
  type        = string
  description = "EC2 key pair name"
  default     = ""
}
