variable "name" {}
variable "location" {}
variable "subnet_id" {}
variable "username" {}
variable "password" {}

locals {
  module_name = "${var.name}-webserver"
}

variable "count" {
  default     = 1
  type        = "string"
  description = "The number of VMs to provision"
}

variable "os" {
  default     = "OpenLogic:CentOS:7.3:latest"
  type        = "string"
  description = "The Marketplace image information in the following format: Offer:Publisher:Sku:Version"
}

variable "size" {
  default     = "Standard_D1_v2"
  type        = "string"
  description = "VM SKU to provision"
}

variable "disk_os_sku" {
  default     = "Standard_LRS"
  type        = "string"
  description = "Managed disk SKU for the OS disk"
}

variable "delete_os_disk_on_termination" {
  default     = false
  type        = "string"
  description = "Flag to delete OS disk on VM destroy"
}
