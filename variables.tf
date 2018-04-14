variable "name" {}
variable "location" {}
variable "username" {}
variable "password" {}

variable "vnet_address_spacing" {
  default     = ["10.0.0.0/16"]
  type        = "list"
  description = ""
}

variable "subnet_address_prefix" {
    default     = "10.0.2.0/24"
  type        = "string"
  description = ""
}

variable "count" {
  default     = 1
  type        = "string"
  description = ""
}

variable "os" {
  default     = "OpenLogic:CentOS:7.3:latest"
  type        = "string"
  description = "The Marketplace image information in the following format: Offer:Publisher:Sku:Version"
}

variable "size" {
  default     = "Standard_D1_v2"
  type        = "string"
  description = ""
}

variable "disk_os_sku" {
  default     = "Standard_LRS"
  type        = "string"
  description = ""
}

variable "disk_data_sku" {
  default     = "Standard_LRS"
  type        = "string"
  description = ""
}

variable "disk_data_size_gb" {
  default     = 128
  type        = "string"
  description = ""
}

variable "delete_os_disk_on_termination" {
  default     = false
  type        = "string"
  description = ""
}

variable "delete_data_disks_on_termination" {
  default     = false
  type        = "string"
  description = ""
}

locals {
  module_name = "${var.name}-webserver"
}
