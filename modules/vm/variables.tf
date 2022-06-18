variable "instance_name" {
  type        = string
  description = "name of the instance that you want to deploy"
}

variable "target_node" {
  type        = string
  description = "where do we deploy this?"
}

variable "image_name" {
  type        = string
  description = "what ISO to deploy?"
}

variable "cores" {
  type = string
}

variable "memory" {
  type = string
}

variable "disk_size" {
  type = string
}

variable "os_type" {
  type = string  
}